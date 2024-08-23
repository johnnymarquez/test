package com.trattoria.model;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
@Table(name = "mesas")
public class Mesa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_mesa;

    @Column(name = "numero_mesa")
    private Integer numeroMesa;

    @Column(name = "cantidad_persona")
    private Integer cantidadPersona;

    private Boolean disponible;
}