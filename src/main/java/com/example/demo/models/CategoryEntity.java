package com.example.demo.models;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "category")
public class CategoryEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "category_name")
    private String category_name;

    @Column(name = "description")
    private String description;

    @OneToMany(mappedBy = "categoryEntity", cascade = CascadeType.ALL)
    private List<ProductEntity> productEntities;

    @OneToMany(mappedBy = "categoryEntity", cascade = CascadeType.ALL)
    private List<CategoryColorEntity> categoryColorEntities;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<ProductEntity> getProductEntities() {
        return productEntities;
    }

    public void setProductEntities(List<ProductEntity> productEntities) {
        this.productEntities = productEntities;
    }

    public List<CategoryColorEntity> getCategoryColorEntities() {
        return categoryColorEntities;
    }

    public void setCategoryColorEntities(List<CategoryColorEntity> categoryColorEntities) {
        this.categoryColorEntities = categoryColorEntities;
    }
}
