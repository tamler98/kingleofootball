package com.example.demo.service;


import com.example.demo.models.BookingCartEntity;
import com.example.demo.repository.BookingCartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class BookingCartService {
    @Autowired
    BookingCartRepository bookingCartRepository;

    public BookingCartEntity findById(int id) { return bookingCartRepository.findById(id);
    }
}
