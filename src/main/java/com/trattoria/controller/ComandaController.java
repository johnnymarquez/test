package com.trattoria.controller;

import com.trattoria.model.Comanda;
import com.trattoria.service.ComandaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/comandas")
public class ComandaController {

    @Autowired
    private ComandaService comandaService;

    @GetMapping
    public List<Comanda> getAllComandas() {
        return comandaService.getAllComandas();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Comanda> getComandaById(@PathVariable Integer id) {
        return comandaService.getComandaById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public Comanda createComanda(@RequestBody Comanda comanda) {
        return comandaService.saveComanda(comanda);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Comanda> updateComanda(@PathVariable Integer id, @RequestBody Comanda comanda) {
        return comandaService.getComandaById(id)
                .map(existingComanda -> {
                    comanda.setId_comanda(id);
                    return ResponseEntity.ok(comandaService.saveComanda(comanda));
                })
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteComanda(@PathVariable Integer id) {
        return comandaService.getComandaById(id)
                .map(comanda -> {
                    comandaService.deleteComanda(id);
                    return ResponseEntity.ok().<Void>build();
                })
                .orElse(ResponseEntity.notFound().build());
    }
}