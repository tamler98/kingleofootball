package com.example.demo.controller;


import com.example.demo.models.BookingCartEntity;
import com.example.demo.models.BookingCartItemEntity;
import com.example.demo.models.ProductEntity;
import com.example.demo.service.BookingCartItemService;
import com.example.demo.service.BookingCartService;
import com.example.demo.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

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

    @GetMapping()
    public String getAllProduct(Model model) {
        List<ProductEntity> listProduct = productService.findAll();
        model.addAttribute("listProduct", listProduct);
        return "index";
    }

    @RequestMapping(value="/addToCart/product_id={product_id}",method = POST, produces = "text/plain;charset=UTF-8")
    public String showAddRoom(Model model, @PathVariable int product_id,
                              @RequestParam(name = "color") String color,
                              @RequestParam(name = "size") int size) {
        ProductEntity product =productService.findById(product_id);
        BookingCartEntity bookingCartEntity = bookingCartService.findById(1);
        int checkExist = exist(product_id);
        if(checkExist == 0) {
            BookingCartItemEntity bookingCartItemEntity = bookingCartItemService.findByProductId(product_id);
            bookingCartItemEntity.setQuantity(bookingCartItemEntity.getQuantity() + 1);
            bookingCartItemService.save(bookingCartItemEntity);
        } else if (checkExist == -1) {
            BookingCartItemEntity bookingCartItemEntity = new BookingCartItemEntity();
            bookingCartItemEntity.setProductEntity(product);
            bookingCartItemEntity.setBookingCartEntity(bookingCartEntity);
            bookingCartItemEntity.setColor(color);
            bookingCartItemEntity.setQuantity(1);
            bookingCartItemEntity.setSize(size);
            bookingCartItemService.save(bookingCartItemEntity);
        }
        return "redirect:/";
    }

    public int exist(int product_id){
        List<BookingCartItemEntity> bookingCartItemEntities = bookingCartItemService.findByBookingCartId(1);
        ProductEntity product = productService.findById(product_id);
        for (BookingCartItemEntity item: bookingCartItemEntities) {
            if (item.getProductEntity().getId() == product_id && item.getSize() == product.getProduct_size()) {
                return 0;
            }
        }
        return -1;
    }

}
