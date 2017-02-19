-- PELÍCULAS DE FANTASIA--

-- ---------------------

USE  tienda;

INSERT INTO imagen(imagen) VALUE ('tienda/peli51');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Cenicienta', 'fantasia', '1998', 52, 200, 355, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'aleman'), 'dvd', 'Irvin Kershner');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli52');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Mulan', 'fantasia', '1988', 78, 169, 165, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'espaniol'), 'dvd', 'Peter Jackson ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'frances' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli3');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Toy story 1', 'fantasia', '2001', 52, 88, 103, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'Blu-ray', 'George Lucas ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'frances' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli54');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Toy Story 2', 'fantasia', '1997', 90, 89, 110, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'chino'), 'Blu-ray', 'Richard Marquand ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli55');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Toy Story 3', 'fantasia', '1999', 89, 129, 159, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ruso'), 'dvd', 'David Yates ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ruso' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli56');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Robocop', 'fantasia', '1987', 110, 186, 286, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'Blu-ray', 'Tim Burton ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'frances' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli57');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Mulan dos', 'accion', '2002', 155, 79, 195, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'dvd', 'Hayao Miyazaki ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli58');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Pinocho', 'fantasia', '1970', 87, 97, 157, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'Blu-ray', 'Henry Selick ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli59');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Bambi', 'fantasia', '1994', 50, 95, 105, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'dvd', 'Alejandro Amenábar');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli60');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Cars', 'accion', '2004', 89, 68, 120, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'Blu-ray', 'Chris Columbus ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli61');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Malifica', 'fantasia', '2003', 99, 105, 150, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'frances'), 'dvd', ' Henry Cavill ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli62');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Plaza sesamo', 'accion', '1987', 78, 129, 155, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'Blu-ray', 'Zack Snyder ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'frances' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli63');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('El pajaro', 'accion', '1988', 108, 109, 299, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'dvd', 'Tim Miller ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli64');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Mundo helado', 'fantasia', '1995', 75, 120, 230, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'espaniol'), 'Blu-ray', 'Peter Jackson');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );


INSERT INTO imagen(imagen) VALUE ('tienda/peli65');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Bella durmiente', 'fantasia', '1994', 210, 77, 84, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'dvd', 'Martin Freeman');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli66');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Superman Lego', 'fantasia', '1999', 350, 150, 300, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'Blu-ray', 'Richard Armitage');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli67');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Lego uno', 'fantasia', '2016', 354, 269, 375, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'dvd', 'David Yates');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli68');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Buscando a nemo', 'fantasia', '1999', 288, 225, 293, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'Blu-ray', 'Rupert Grint');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli69');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Minios', 'fantasia', '2012', 400, 245, 330, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'dvd', 'Jerry Zucker');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli70');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Los Vengadores', 'fantasia', '2012', 560, 297, 313, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'espaniol'), 'Blu-ray', 'Patrick Swayze');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli21');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Minions dos', 'fantasia', '2011', 458, 135, 150, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'espaniol'), 'dvd', 'Demi Moore');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli72');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Minios tres', 'fantasia', '2006', 559, 333, 480, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'espaniol'), 'Blu-ray', 'Gore Verbinski ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli73');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Escuadron suicida', 'fantasia', '2016', 580, 186, 233, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'espaniol'), 'dvd', 'Frank Darabont');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli74');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Spiderman', 'fantasia', '2009', 492, 599, 550, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'Blu-ray', 'Eddie Redmayne');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );

INSERT INTO imagen(imagen) VALUE ('tienda/peli75');
INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) VALUE
('Blanca nieves y los siete enanitos', 'fantasia', '1915', 550, 549, 535, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );
INSERT INTO pelicula (idInventario, idIdioma, formato, director )  VALUE
( ( SELECT idInventario FROM inventario ORDER BY idInventario DESC LIMIT 1 ), (SELECT idIdioma FROM idioma WHERE idioma = 'ingles'), 'dvd', 'Frank Darabont ');
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'ingles' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
INSERT INTO pelicula_subtitulo( idIdioma, idPelicula ) VALUE
( ( SELECT idIdioma FROM idioma WHERE idioma = 'espaniol' ), (SELECT idInventario FROM pelicula ORDER BY idInventario DESC LIMIT 1) );
