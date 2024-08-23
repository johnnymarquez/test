package com.trattoria.repository;

import com.trattoria.model.Comanda;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ComandaRepository extends JpaRepository<Comanda, Integer> {
    // The second type parameter is now Integer instead of Long
}