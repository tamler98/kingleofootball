package com.example.demo.controller;

import com.example.demo.models.ProductDetailEntity;
import com.example.demo.models.ProductEntity;
import com.example.demo.service.ProductDetailService;
import com.example.demo.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    @Autowired
    ProductService productService;
    @Autowired
    ProductDetailService productDetailService;
    @GetMapping("/manager")
    public String productManagement(Model model){
        List<ProductDetailEntity> productDetailList = productDetailService.findAll();
        model.addAttribute("productList", productDetailList);
        return "admin/productlist";
    }
}
