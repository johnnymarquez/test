package com.trattoria.repository;

import com.trattoria.model.Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductoRepository extends JpaRepository<Producto, Integer> {
    // The second type parameter is now Integer instead of Long
}