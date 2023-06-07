package com.example.demo.service;

import com.example.demo.models.BookingCartItemEntity;
import com.example.demo.repository.BookingCartItemRepository;
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

    public List<BookingCartItemEntity> findAll() { return bookingCartItemRepository.findAll();
    }

    public void deleteById(int id) { bookingCartItemRepository.deleteById(id);
    }

    public BookingCartItemEntity findByProductDetailId(int id) { return bookingCartItemRepository.findByProductDetailId(id);
    }

    public BookingCartItemEntity findById(int id) { return bookingCartItemRepository.findById(id);
    }
}
