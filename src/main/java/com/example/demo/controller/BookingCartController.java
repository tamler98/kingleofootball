package com.example.demo.controller;

import com.example.demo.models.BookingCartEntity;
import com.example.demo.models.BookingCartItemEntity;
import com.example.demo.service.BookingCartItemService;
import com.example.demo.service.BookingCartService;
import com.example.demo.service.ProductService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value="/cart")
public class BookingCartController {
    @Autowired
    BookingCartItemService bookingCartItemService;

    @Autowired
    BookingCartService bookingCartService;

    @Autowired
    ProductService productService;

    @GetMapping()
    public String bookingCart(Model model){
        BookingCartEntity bookingCartEntity = bookingCartService.findById(1);
        List<BookingCartItemEntity> bookingCartItemEntities = bookingCartItemService.findByBookingCartId(bookingCartEntity.getId());
        model.addAttribute("bookingCartItemList", bookingCartItemEntities);
        return "bookingcart";
    }

    @GetMapping(value = "/deleteItem/{id}")
    public String deleteCartItem(@PathVariable int id, Model model, HttpSession session){
        BookingCartItemEntity bookingCartItemEntity = bookingCartItemService.findById(id);
        model.addAttribute("msg", "Delete success");
        int count = (int) session.getAttribute("count");
        session.setAttribute("count", count - bookingCartItemEntity.getQuantity());
        bookingCartItemService.deleteById(id);
        return "redirect:/cart";
    }

}
