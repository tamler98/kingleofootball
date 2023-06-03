package com.example.demo.service;


import com.example.demo.models.ProductEntity;
import com.example.demo.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;

    public List<ProductEntity> findAll() {
        return (List<ProductEntity>) productRepository.findAll();
    }

    public ProductEntity findById(int productId) { return productRepository.findById(productId);
    }
}
