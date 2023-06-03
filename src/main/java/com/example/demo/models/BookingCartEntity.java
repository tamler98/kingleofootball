package com.example.demo.models;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "booking_cart")
public class BookingCartEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @OneToMany(mappedBy = "bookingCartEntity", cascade = CascadeType.ALL)
    private List<BookingCartItemEntity> bookingCartItemEntities;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<BookingCartItemEntity> getBookingCartItemEntities() {
        return bookingCartItemEntities;
    }

    public void setBookingCartItemEntities(List<BookingCartItemEntity> bookingCartItemEntities) {
        this.bookingCartItemEntities = bookingCartItemEntities;
    }
}
