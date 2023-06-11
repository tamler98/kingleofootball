package com.example.demo.repository;


import com.example.demo.models.ProductEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {
    @Query(value = "select * from product where id =?1", nativeQuery = true)
    ProductEntity findById(int id);
    @Query(value="select * from product", nativeQuery = true)
    Page<ProductEntity> getProductList(Pageable pageable);

    List<ProductEntity> findAll();
}
