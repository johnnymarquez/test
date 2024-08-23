package com.trattoria.model;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
@Table(name = "categorias")
public class Categoria {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_categoria;

    @Column(name = "nombre_categoria")
    private String nombreCategoria;
}