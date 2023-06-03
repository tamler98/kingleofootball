package com.example.demo.controller;

import com.example.demo.models.BookingCartEntity;
import com.example.demo.models.BookingCartItemEntity;
import com.example.demo.service.BookingCartItemService;
import com.example.demo.service.BookingCartService;
import com.example.demo.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class BookingCartController {
    @Autowired
    BookingCartItemService bookingCartItemService;

    @Autowired
    BookingCartService bookingCartService;

    @Autowired
    ProductService productService;

    @GetMapping("/cart")
    public String bookingCart(Model model){
        BookingCartEntity bookingCartEntity = bookingCartService.findById(1);
        List<BookingCartItemEntity> bookingCartItemEntities = bookingCartItemService.findByBookingCartId(bookingCartEntity.getId());
        model.addAttribute("bookingCartItemList", bookingCartItemEntities);
        return "bookingcart";
    }
}
