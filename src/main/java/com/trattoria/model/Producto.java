package com.trattoria.model;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
@Table(name = "productos")
public class Producto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_producto;

    @Column(name = "codigo_producto")
    private String codigoProducto;

    @Column(name = "nombre_producto")
    private String nombreProducto;

    private Integer stock;

    @Column(name = "precio_unitario")
    private Integer precioUnitario;

    @ManyToOne
    @JoinColumn(name = "id_categoria")
    private Categoria categoria;
}