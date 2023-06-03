package com.example.demo.models;

import jakarta.persistence.*;

import java.util.Optional;

@Entity
@Table(name = "booking_cart_item")
public class BookingCartItemEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "product_id")
    private ProductEntity productEntity;

    @Column(name = "quantity")
    private int quantity;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "booking_cart_id")
    private BookingCartEntity bookingCartEntity;

    @Column(name = "color")
    private String color;

    @Column(name = "size")
    private int size;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ProductEntity getProductEntity() {
        return productEntity;
    }

    public void setProductEntity(ProductEntity productEntity) {
        this.productEntity = productEntity;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public BookingCartEntity getBookingCartEntity() {
        return bookingCartEntity;
    }

    public void setBookingCartEntity(BookingCartEntity bookingCartEntity) {
        this.bookingCartEntity = bookingCartEntity;
    }
}
