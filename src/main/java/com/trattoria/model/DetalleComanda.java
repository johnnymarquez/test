package com.trattoria.model;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
@Table(name = "detalles_comandas")
public class DetalleComanda {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_detalle;

    @ManyToOne
    @JoinColumn(name = "id_comanda")
    private Comanda comanda;

    @ManyToOne
    @JoinColumn(name = "id_producto")
    private Producto producto;

    @Column(name = "cantidad_producto")
    private Integer cantidadProducto;

    @Column(name = "precio_unitario")
    private Integer precioUnitario;
}