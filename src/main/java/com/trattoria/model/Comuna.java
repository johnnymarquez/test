package com.trattoria.model;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
@Table(name = "comunas")
public class Comuna {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_comuna;
    
    private String nombre;
}
