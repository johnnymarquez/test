package com.trattoria.repository;

import com.trattoria.model.Garzon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GarzonRepository extends JpaRepository<Garzon, Integer> {
    // The second type parameter is now Integer instead of Long
}