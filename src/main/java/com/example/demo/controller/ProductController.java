package com.example.demo.controller;


import com.example.demo.models.BookingCartEntity;
import com.example.demo.models.BookingCartItemEntity;
import com.example.demo.models.ProductDetailEntity;
import com.example.demo.models.ProductEntity;
import com.example.demo.service.BookingCartItemService;
import com.example.demo.service.BookingCartService;
import com.example.demo.service.ProductDetailService;
import com.example.demo.service.ProductService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(path = "/")
public class ProductController {
    //DI Dependency Injection
    @Autowired
    ProductService productService;

    @Autowired
    BookingCartService bookingCartService;

    @Autowired
    BookingCartItemService bookingCartItemService;

    @Autowired
    ProductDetailService productDetailService;

    @GetMapping()
    public String getAllProduct(Model model,
                                HttpSession session,
                                @RequestParam(name = "page", defaultValue = "0") int pageNumber,
                                @RequestParam(name = "size", defaultValue = "8") int pageSize) {
//        List<ProductEntity> listProduct = productService.findAll();
        PageRequest pageRequest = PageRequest.of(pageNumber, pageSize);
        Page<ProductEntity> listProduct = productService.getProductList(pageRequest);
        model.addAttribute("productList", listProduct.getContent());
        model.addAttribute("currentPage", listProduct.getNumber());
        model.addAttribute("totalPages", listProduct.getTotalPages());

        List<BookingCartItemEntity> bookingCartItemEntities = bookingCartItemService.findAll();
        int count = countProduct(bookingCartItemEntities);
        session.setAttribute("count", count);
        return "index";
    }

    @RequestMapping(value="/addToCart/{id}",method = POST, produces = "text/plain;charset=UTF-8")
    public String showAddRoom(Model model, @PathVariable int id,
                              @RequestParam(name = "color") String color,
                              @RequestParam(name = "size") int size) {
        try {
            ProductDetailEntity product = findProduct(id, color, size);
            BookingCartEntity bookingCartEntity = bookingCartService.findById(1);
            int checkExist = exist(product.getId(), color, size);
            if(checkExist == -1) {
                createNewBookingCartItem(product, bookingCartEntity, color, size);
            }else {
                BookingCartItemEntity bookingCartItemEntity = bookingCartItemService.findByProductDetailId(product.getId());
                bookingCartItemEntity.setQuantity(bookingCartItemEntity.getQuantity() + 1);
                bookingCartItemService.save(bookingCartItemEntity);
            }
            return "redirect:/";
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("errorMessage", "khong tim thay san pham");
        }
        return "redirect:/";
    }

    public int exist(int product_id, String color, int size){
        List<BookingCartItemEntity> bookingCartItemEntities = bookingCartItemService.findByBookingCartId(1);
        for (BookingCartItemEntity item: bookingCartItemEntities) {
            if (item.getSize() == size && item.getColor().equals(color)) {
                return item.getId();
            }
        }
        return -1;
    }

    public int countProduct(List<BookingCartItemEntity> bookingCartItemEntities){
        int count = 0;
        for (BookingCartItemEntity item:bookingCartItemEntities) {
            count += item.getQuantity();
        }
        return count;
    }

    public List<ProductEntity> setListProduct(){
        List<ProductEntity> productEntities = productService.findAll();
        Set<String> uniqueProductName = new HashSet<>();
        List<ProductEntity> newProductShow = new ArrayList<>();
        if (!productEntities.isEmpty()) {
            for (ProductEntity item : productEntities) {
                if(!uniqueProductName.contains(item.getProduct_name())){
                    uniqueProductName.add(item.getProduct_name());
                    newProductShow.add(item);
                }
            }
        }
        return newProductShow;
    }

    public ProductDetailEntity findProduct(int id,String color,int size) {
        List<ProductDetailEntity> productDetailEntities = productDetailService.findAllByProductId(id);
        ProductDetailEntity product = new ProductDetailEntity();
        for (ProductDetailEntity item: productDetailEntities) {
            if (item.getColor().equals(color) && item.getSize() == size) {
                product = item;
                break;
            }
        }
        return product;
    }

    public void createNewBookingCartItem(ProductDetailEntity product, BookingCartEntity bookingCartEntity, String color, int size){
        BookingCartItemEntity bookingCartItemEntity = new BookingCartItemEntity();
        bookingCartItemEntity = new BookingCartItemEntity();
        bookingCartItemEntity.setProductDetailEntity(product);
        bookingCartItemEntity.setBookingCartEntity(bookingCartEntity);
        bookingCartItemEntity.setColor(color);
        bookingCartItemEntity.setQuantity(1);
        bookingCartItemEntity.setSize(size);
        bookingCartItemService.save(bookingCartItemEntity);
    }
}
