package com.trattoria.service;

import com.trattoria.model.Comanda;
import com.trattoria.repository.ComandaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ComandaService {

    @Autowired
    private ComandaRepository comandaRepository;

    public List<Comanda> getAllComandas() {
        return comandaRepository.findAll();
    }

    public Optional<Comanda> getComandaById(Integer id) {
        return comandaRepository.findById(id);
    }

    public Comanda saveComanda(Comanda comanda) {
        return comandaRepository.save(comanda);
    }

    public void deleteComanda(Integer id) {
        comandaRepository.deleteById(id);
    }
}