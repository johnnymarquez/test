package com.trattoria.model;

import lombok.Data;
import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "comandas")
public class Comanda {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_comanda;

    @Column(name = "fecha_emision")
    @Temporal(TemporalType.DATE)
    private Date fechaEmision;

    private Boolean estado;

    @Column(name = "propina_sugerida")
    private Integer propinaSugerida;

    @ManyToOne
    @JoinColumn(name = "id_garzon")
    private Garzon garzon;

    @ManyToOne
    @JoinColumn(name = "id_mesa")
    private Mesa mesa;
}