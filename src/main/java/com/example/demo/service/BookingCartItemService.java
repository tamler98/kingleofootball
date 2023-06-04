package com.example.demo.service;

import com.example.demo.models.BookingCartItemEntity;
import com.example.demo.repository.BookingCartItemRepository;
import com.example.demo.repository.BookingCartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookingCartItemService {
    @Autowired
    BookingCartItemRepository bookingCartItemRepository;

    public void save(BookingCartItemEntity bookingCartItemEntity) { bookingCartItemRepository.save(bookingCartItemEntity);
    }

    public List<BookingCartItemEntity> findByBookingCartId(int id) { return bookingCartItemRepository.findByBookingCartId(id);
    }

    public BookingCartItemEntity findByProductId(int productId) { return bookingCartItemRepository.findByProductId(productId);
    }

    public List<BookingCartItemEntity> findAll() { return bookingCartItemRepository.findAll();
    }
}
