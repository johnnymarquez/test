package com.trattoria.model;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
@Table(name = "garzones")
public class Garzon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_garzon;

    private String rut;
    private String nombre;
    private String apellido;
    private String correo;
    private String direccion;

    @ManyToOne
    @JoinColumn(name = "id_comuna")
    private Comuna comuna;
}