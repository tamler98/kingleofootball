package com.example.demo.repository;


import com.example.demo.models.BookingCartEntity;
import com.example.demo.models.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookingCartRepository extends JpaRepository<BookingCartEntity, Integer> {
    @Query(value = "select * from booking_cart where id =?1", nativeQuery = true)
    BookingCartEntity findById(int id);
}
