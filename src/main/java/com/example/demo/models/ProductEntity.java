package com.example.demo.models;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "product")
public class ProductEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "product_name")
    private String product_name;
    @Column(name = "price")
    private Double price;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "category_id")
    private CategoryEntity categoryEntity;

    @OneToMany(mappedBy = "productEntity")
    private List<ProductDetailEntity> productDetailEntities;

    @OneToMany(mappedBy = "productEntity")
    private List<ProductColorEntity> productColorEntities;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public CategoryEntity getCategoryEntity() {
        return categoryEntity;
    }

    public void setCategoryEntity(CategoryEntity categoryEntity) {
        this.categoryEntity = categoryEntity;
    }

    public List<ProductDetailEntity> getProductDetailEntities() {
        return productDetailEntities;
    }

    public void setProductDetailEntities(List<ProductDetailEntity> productDetailEntities) {
        this.productDetailEntities = productDetailEntities;
    }

    public List<ProductColorEntity> getProductColorEntities() {
        return productColorEntities;
    }

    public void setProductColorEntities(List<ProductColorEntity> productColorEntities) {
        this.productColorEntities = productColorEntities;
    }
}
