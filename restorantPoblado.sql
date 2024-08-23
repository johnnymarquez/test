CREATE TABLE mesas(
	id_mesa INTEGER,
	numero_mesa INTEGER UNIQUE NOT NULL,
	cantidad_persona INTEGER NOT NULL,
	disponible BOOLEAN NOT NULL,
	CONSTRAINT pk_mesas PRIMARY KEY (id_mesa)
);

CREATE TABLE comunas(
	id_comuna INTEGER,
	nombre VARCHAR NOT NULL,
	CONSTRAINT pk_comunas PRIMARY KEY (id_comuna)
);

CREATE TABLE garzones(
	id_garzon INTEGER,
	rut VARCHAR UNIQUE NOT NULL,
	nombre VARCHAR NOT NULL,
	apellido VARCHAR NOT NULL,
	correo VARCHAR UNIQUE NOT NULL,
	direccion VARCHAR NOT NULL,
	id_comuna INTEGER,
	CONSTRAINT pk_garzones PRIMARY KEY (id_garzon),
	CONSTRAINT fk_garzones_comunas FOREIGN KEY (id_comuna) REFERENCES comunas(id_comuna)
);

CREATE TABLE comandas(
	id_comanda INTEGER,
	fecha_emision DATE NOT NULL,
	estado BOOLEAN NOT NULL,
	propina_sugerida INTEGER NOT NULL,
	id_garzon INTEGER,
	id_mesa INTEGER,
	CONSTRAINT pk_comandas PRIMARY KEY (id_comanda),
	CONSTRAINT fk_comandas_garzones FOREIGN KEY (id_garzon) REFERENCES garzones(id_garzon),
	CONSTRAINT fk_comandas_mesas FOREIGN KEY (id_mesa) REFERENCES mesas(id_mesa)
);

CREATE TABLE categorias(
	id_categoria INTEGER,
	nombre_categoria VARCHAR NOT NULL,
	CONSTRAINT pk_categorias PRIMARY KEY (id_categoria)
);

CREATE TABLE productos(
	id_producto INTEGER,
	codigo_producto VARCHAR UNIQUE NOT NULL,
	nombre_producto VARCHAR NOT NULL,
	stock INTEGER NOT NULL,
	precio_unitario INTEGER NOT NULL,
	id_categoria INTEGER,
	CONSTRAINT pk_productos PRIMARY KEY (id_producto),
	CONSTRAINT fk_productos_categorias FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE detalles_comandas(
	id_detalle INTEGER,
	id_comanda INTEGER,
	id_producto INTEGER,
	cantidad_producto INTEGER NOT NULL,
	precio_unitario INTEGER NOT NULL,
	CONSTRAINT pk_detalles_comandas PRIMARY KEY (id_detalle),
	CONSTRAINT fk_detalles_comandas_comandas FOREIGN KEY (id_comanda) REFERENCES comandas(id_comanda),
	CONSTRAINT fk_detalles_comandas_productos FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (1, 1, 5, true);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (2, 2, 10, true);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (3, 3, 10, true);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (4, 4, 15, true);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (5, 5, 15, true);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (6, 6, 2, true);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (7, 7, 2, false);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (8, 8, 4, true);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (9, 9, 4, true);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (10, 10, 4, false);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (11, 11, 4, true);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (12, 12, 6, true);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (13, 13, 6, true);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (14, 14, 6, false);
INSERT INTO mesas(id_mesa, numero_mesa, cantidad_persona, disponible)
VALUES (15, 15, 6, true);

INSERT INTO comunas(id_comuna, nombre)
VALUES(1, 'Cerrillos');
INSERT INTO comunas(id_comuna, nombre)
VALUES(2, 'Cerro Navia');
INSERT INTO comunas(id_comuna, nombre)
VALUES(3, 'Conchalí');
INSERT INTO comunas(id_comuna, nombre)
VALUES(4, 'El Bosque');
INSERT INTO comunas(id_comuna, nombre)
VALUES(5, 'Estación Central');
INSERT INTO comunas(id_comuna, nombre)
VALUES(6, 'Huechuraba');
INSERT INTO comunas(id_comuna, nombre)
VALUES(7, 'Independencia');
INSERT INTO comunas(id_comuna, nombre)
VALUES(8, 'La Cisterna');
INSERT INTO comunas(id_comuna, nombre)
VALUES(9, 'La Florida');
INSERT INTO comunas(id_comuna, nombre)
VALUES(10, 'La Granja');
INSERT INTO comunas(id_comuna, nombre)
VALUES(11, 'La Pintana');
INSERT INTO comunas(id_comuna, nombre)
VALUES(12, 'La Reina');
INSERT INTO comunas(id_comuna, nombre)
VALUES(13, 'Las Condes');
INSERT INTO comunas(id_comuna, nombre)
VALUES(14, 'Lo Barnechea');
INSERT INTO comunas(id_comuna, nombre)
VALUES(15, 'Lo Espejo');
INSERT INTO comunas(id_comuna, nombre)
VALUES(16, 'Lo Prado');
INSERT INTO comunas(id_comuna, nombre)
VALUES(17, 'Macul');
INSERT INTO comunas(id_comuna, nombre)
VALUES(18, 'Maipú');
INSERT INTO comunas(id_comuna, nombre)
VALUES(19, 'Ñuñoa');
INSERT INTO comunas(id_comuna, nombre)
VALUES(20, 'Pedro Aguirre Cerda');
INSERT INTO comunas(id_comuna, nombre)
VALUES(21, 'Peñalolén');
INSERT INTO comunas(id_comuna, nombre)
VALUES(22, 'Providencia');
INSERT INTO comunas(id_comuna, nombre)
VALUES(23, 'Pudahuel');
INSERT INTO comunas(id_comuna, nombre)
VALUES(24, 'Quilicura');
INSERT INTO comunas(id_comuna, nombre)
VALUES(25, 'Quinta Normal');
INSERT INTO comunas(id_comuna, nombre)
VALUES(26, 'Recoleta');
INSERT INTO comunas(id_comuna, nombre)
VALUES(27, 'Renca');
INSERT INTO comunas(id_comuna, nombre)
VALUES(28, 'San Joaquín');
INSERT INTO comunas(id_comuna, nombre)
VALUES(29, 'San Miguel');
INSERT INTO comunas(id_comuna, nombre)
VALUES(30, 'San Ramón');
INSERT INTO comunas(id_comuna, nombre)
VALUES(31, 'Santiago');
INSERT INTO comunas(id_comuna, nombre)
VALUES(32, 'Vitacura');
INSERT INTO comunas(id_comuna, nombre)
VALUES(33, 'Puente Alto');
INSERT INTO comunas(id_comuna, nombre)
VALUES(34, 'San José de Maipo');
INSERT INTO comunas(id_comuna, nombre)
VALUES(35, 'Pirque');
INSERT INTO comunas(id_comuna, nombre)
VALUES(36, 'San Bernardo');
INSERT INTO comunas(id_comuna, nombre)
VALUES(37, 'Calera de Tango');
INSERT INTO comunas(id_comuna, nombre)
VALUES(38, 'Buin');
INSERT INTO comunas(id_comuna, nombre)
VALUES(39, 'Paine');
INSERT INTO comunas(id_comuna, nombre)
VALUES(40, 'Colina');
INSERT INTO comunas(id_comuna, nombre)
VALUES(41, 'Lampa');
INSERT INTO comunas(id_comuna, nombre)
VALUES(42, 'Til-Til');
INSERT INTO comunas(id_comuna, nombre)
VALUES(43, 'Alhué');
INSERT INTO comunas(id_comuna, nombre)
VALUES(44, 'Curacaví');
INSERT INTO comunas(id_comuna, nombre)
VALUES(45, 'María Pinto');
INSERT INTO comunas(id_comuna, nombre)
VALUES(46, 'Melipilla');
INSERT INTO comunas(id_comuna, nombre)
VALUES(47, 'San Pedro');

INSERT INTO garzones(id_garzon, rut, nombre, apellido, correo, direccion, id_comuna)
VALUES (1, '11111111-1', 'Francisca', 'Cruz', 'fcruz@mail.com', 'Pasaje quellón 4567', 1);
INSERT INTO garzones(id_garzon, rut, nombre, apellido, correo, direccion, id_comuna)
VALUES (2, '22222222-2', 'Carolina', 'Vazquez', 'cvazquez@mail.com', 'San Carlos 5665', 2);
INSERT INTO garzones(id_garzon, rut, nombre, apellido, correo, direccion, id_comuna)
VALUES (3, '33333333-3', 'Catalina', 'Molina', 'cmolina@mail.com', 'Avenida Gabriela 7654', 3);
INSERT INTO garzones(id_garzon, rut, nombre, apellido, correo, direccion, id_comuna)
VALUES (4, '55555555-5', 'Felipe', 'Palleres', 'fpalleres@mail.com', 'Creta sur 6543', 4);
INSERT INTO garzones(id_garzon, rut, nombre, apellido, correo, direccion, id_comuna)
VALUES (5, '66666666-6', 'Leonardo', 'Olivares', 'lolivares@mail.com', 'Luis Matte 8742', 5);

INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(1, '07-08-2024', true, 10, 1, 1);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(2, '07-08-2024', true, 10, 1, 2);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(3, '07-08-2024', true, 10, 1, 3);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(4, '07-08-2024', true, 10, 1, 4);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(5, '07-08-2024', true, 10, 1, 5);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(6, '07-08-2024', true, 10, 2, 6);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(7, '07-08-2024', true, 10, 2, 7);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(8, '07-08-2024', true, 10, 2, 8);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(9, '07-08-2024', true, 10, 2, 9);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(10, '07-08-2024', true, 10, 2, 10);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(11, '07-08-2024', true, 10, 3, 11);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(12, '07-08-2024', true, 10, 3, 12);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(13, '07-08-2024', true, 10, 3, 13);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(14, '07-08-2024', true, 10, 3, 14);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(15, '07-08-2024', true, 10, 3, 15);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(16, '07-08-2024', true, 10, 1, 1);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(17, '07-08-2024', false, 10, 1, 2);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(18, '07-08-2024', true, 10, 1, 3);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(19, '07-08-2024', false, 10, 1, 4);
INSERT INTO comandas(id_comanda, fecha_emision, estado, propina_sugerida, id_garzon, id_mesa)
VALUES(20, '07-08-2024', true, 10, 1, 5);

INSERT INTO categorias(id_categoria, nombre_categoria)
VALUES(1, 'platos');
INSERT INTO categorias(id_categoria, nombre_categoria)
VALUES(2, 'bebestibles');
INSERT INTO categorias(id_categoria, nombre_categoria)
VALUES(3, 'postres');
INSERT INTO categorias(id_categoria, nombre_categoria)
VALUES(4, 'ensaladas');
INSERT INTO categorias(id_categoria, nombre_categoria)
VALUES(5, 'entradas');

INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(1, '123', 'Fettuchini Alfredo', 50, 15000, 1);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(2, '234', 'Fettuchini Boloñesa', 50, 15000, 1);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(3, '345', 'Fettuchini Pomodoro', 50, 15000, 1);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(4, '456', 'Fettuchini Di Mare', 50, 15000, 1);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(5, '567', 'Ravioli De Carne Boloñesa', 50, 16000, 1);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(6, '678', 'Ravioli De Pollo Alfredo', 50, 16000, 1);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(7, '789', 'Ravioli De Salmón Fungui', 50, 16000, 1);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(8, '901', 'Panzoti de espinaca Pesto', 50, 17000, 1);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(9, '132', 'Pizza Margarita', 50, 20000, 1);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(10, '243', 'Pizza Di Mare', 50, 20000, 1);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(11, '564', 'Coca Cola', 200, 4000, 2);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(12, '565', 'Fanta', 200, 4000, 2);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(13, '566', 'Sprite', 200, 4000, 2);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(14, '569', 'Cerveza', 200, 4000, 2);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(15, '568', 'Copa Vino', 200, 4000, 2);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(16, '987', 'Panacota', 50, 7000, 3);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(17, '986', 'Semifredo', 10, 8000, 3);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(18, '985', 'Helado', 200, 5000, 3);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(19, '984', 'Torta de amapolas', 20, 9000, 3);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(20, '983', 'Torta de chocolate', 20, 9000, 3);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(21, '897', 'Cesar', 50, 15000, 4);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(22, '896', 'Mediterránea', 10, 15000, 4);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(23, '895', 'Caprese', 200, 15000, 4);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(24, '894', 'Mixta', 20, 9000, 4);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(25, '893', 'Verde', 20, 9000, 4);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(26, '798', 'Antipasto', 50, 15000, 5);
INSERT INTO productos(id_producto, codigo_producto, nombre_producto, stock, precio_unitario, id_categoria)
VALUES(27, '797', 'Antipasto Mixto', 10, 15000, 5);

INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(1, 1, 1, 1, 15000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(2, 1, 2, 1, 15000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(3, 1, 3, 1, 15000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(4, 1, 4, 1, 15000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(5, 1, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(6, 2, 1, 1, 15000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(7, 2, 2, 1, 15000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(8, 2, 3, 1, 15000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(9, 2, 4, 1, 15000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(10, 3, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(11, 3, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(12, 3, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(13, 3, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(14, 3, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(15, 3, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(16, 4, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(17, 4, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(18, 4, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(19, 4, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(20, 4, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(21, 4, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(22, 4, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(23, 4, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(24, 4, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(25, 4, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(26, 4, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(27, 4, 12, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(28, 5, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(29, 5, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(30, 5, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(31, 5, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(32, 5, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(33, 5, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(34, 5, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(35, 5, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(36, 5, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(37, 5, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(38, 5, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(39, 5, 12, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(40, 6, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(41, 6, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(42, 6, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(43, 6, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(44, 6, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(45, 6, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(46, 6, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(47, 6, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(48, 6, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(49, 6, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(50, 6, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(51, 6, 12, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(52, 7, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(53, 7, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(54, 7, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(55, 7, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(56, 7, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(57, 7, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(58, 7, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(59, 7, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(60, 7, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(61, 7, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(62, 7, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(63, 7, 12, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(64, 8, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(65, 8, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(66, 8, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(67, 8, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(68, 8, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(69, 8, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(70, 8, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(71, 8, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(72, 8, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(73, 8, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(74, 8, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(75, 8, 12, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(76, 9, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(77, 9, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(78, 9, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(79, 9, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(80, 9, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(81, 9, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(82, 9, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(83, 9, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(84, 9, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(85, 9, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(86, 9, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(87, 9, 12, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(88, 10, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(89, 10, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(90, 10, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(91, 10, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(92, 10, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(93, 10, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(94, 10, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(95, 10, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(96, 10, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(97, 10, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(98, 10, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(99, 10, 12, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(100, 11, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(101, 11, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(102, 11, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(103, 11, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(104, 11, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(105, 11, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(106, 11, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(107, 11, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(108, 11, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(109, 11, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(110, 11, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(111, 11, 12, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(112, 12, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(113, 12, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(114, 12, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(115, 12, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(116, 12, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(117, 12, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(118, 12, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(119, 12, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(120, 12, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(121, 12, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(122, 12, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(123, 12, 12, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(124, 13, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(125, 13, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(126, 13, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(127, 13, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(128, 13, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(129, 13, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(130, 13, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(131, 13, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(132, 13, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(133, 13, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(134, 13, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(135, 13, 12, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(136, 14, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(137, 14, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(138, 14, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(139, 14, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(140, 14, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(141, 14, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(142, 14, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(143, 14, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(144, 14, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(145, 14, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(146, 14, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(147, 14, 12, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(148, 15, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(149, 15, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(150, 15, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(151, 15, 8, 3, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(152, 15, 9, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(153, 15, 10, 1, 20000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(154, 15, 5, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(155, 15, 6, 1, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(156, 15, 7, 2, 16000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(157, 15, 8, 1, 17000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(158, 15, 11, 8, 4000);
INSERT INTO detalles_comandas(id_detalle, id_comanda, id_producto, cantidad_producto, precio_unitario)
VALUES(159, 15, 12, 8, 4000);