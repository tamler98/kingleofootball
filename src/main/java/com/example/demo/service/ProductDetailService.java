package com.example.demo.service;

import com.example.demo.models.ProductDetailEntity;
import com.example.demo.repository.ProductDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductDetailService {
    @Autowired
    ProductDetailRepository productDetailRepository;

    public List<ProductDetailEntity> findAllByProductId(int id) { return productDetailRepository.findAllByProductId(id);
    }

    public List<ProductDetailEntity> findAll() { return productDetailRepository.findAll();
    }
}
