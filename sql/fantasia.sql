-- PELÍCULAS DE FANTASIA--

-- ---------------------

-- imagen

INSERT INTO imagen(imagen) VALUES 
('tienda/peli51'),
('tienda/peli52'),
('tienda/peli3'),
('tienda/peli54'),
('tienda/peli55'),
('tienda/peli56'),
('tienda/peli57'),
('tienda/peli58'),
('tienda/peli59'),
('tienda/peli60'),
('tienda/peli61'),
('tienda/peli62'),
('tienda/peli63'),
('tienda/peli64'),
('tienda/peli65'),
('tienda/peli66'),
('tienda/peli67'),
('tienda/peli68'),
('tienda/peli69'),
('tienda/peli70'),
('tienda/peli21'),
('tienda/peli72'),
('tienda/peli73'),
('tienda/peli74'),
('tienda/peli75');

-- Pelicula


INSERT INTO pelicula 
(idioma, subtitulos, formato, director) 
VALUES
('aleman', 'ingles, espaniol', 'dvd', 'Irvin Kershner'),
('espaniol', 'frances, espaniol', 'dvd', 'Peter Jackson '),
('ingles', 'frances, espaniol', 'Blu-ray', 'George Lucas '),
('chino', 'ingles, espaniol', 'Blu-ray', 'Richard Marquand '),
('ruso', 'ruso, espaniol', 'dvd', 'David Yates '),
('ingles', 'ingles, frances', 'Blu-ray', 'Tim Burton '),
('ingles', 'ingles, espaniol', 'dvd', 'Hayao Miyazaki '),
('ingles', 'ingles, espaniol', 'Blu-ray', 'Henry Selick '),
('ingles', 'ingles, espaniol', 'dvd', 'Alejandro Amenábar'),
('ingles', 'ingles, espaniol', 'Blu-ray', 'Chris Columbus '),
('frances', 'ingles, espaniol', 'dvd', ' Henry Cavill '),
('ingles', 'frances, espaniol', 'Blu-ray', 'Zack Snyder '),
('ingles', 'ingles, espaniol', 'dvd', 'Tim Miller '),
('espaniol', 'ingles, espaniol', 'Blu-ray', 'Peter Jackson'),
('ingles', 'ingles, espaniol', 'dvd', 'Martin Freeman'),
('ingles', 'ingles, espaniol', 'Blu-ray', 'Richard Armitage'),
('ingles', 'ingles, espaniol', 'dvd', 'David Yates'),
('ingles', 'ingles, espaniol', 'Blu-ray', 'Rupert Grint'),
('ingles', 'ingles, espaniol', 'dvd', 'Jerry Zucker'),
('espaniol', 'ingles, espaniol', 'Blu-ray', 'Patrick Swayze'),
('espaniol', 'ingles, espaniol', 'dvd', 'Demi Moore'),
('espaniol', 'ingles, espaniol', 'Blu-ray', 'Gore Verbinski '),
('espaniol', 'ingles, espaniol', 'dvd', 'Frank Darabont'),
('ingles', 'ingles, espaniol', 'Blu-ray', 'Eddie Redmayne'),
('ingles', 'ingles, espaniol', 'dvd', 'Frank Darabont ');

-- inventario

INSERT INTO inventario (nombre, categoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 
VALUES 
('Cenicienta', 'fantasia', '1998', 52, 200, 355, (SELECT idImagen FROM imagen WHERE imagen = 'tienda/peli51') ),
('Mulan', 'fantasia', '1988', 78, 169, 165,52),
('Toy story 1', 'fantasia', '2001', 52, 88, 103,53),
('Toy Story 2', 'fantasia', '1997', 90, 89, 110,54),
('Toy Story 3', 'fantasia', '1999', 89, 129, 159,55),
('Robocop', 'fantasia', '1987', 110, 186, 286,56),
('Mulan dos', 'accion', '2002', 155, 79, 195,57),
('Pinocho', 'fantasia', '1970', 87, 97, 157,58),
('Bambi', 'fantasia', '1994', 50, 95, 105,59),
('Cars', 'accion', '2004', 89, 68, 120,60),
('Malifica', 'fantasia', '2003', 99, 105, 150,61),
('Plaza sesamo', 'accion', '1987', 78, 129, 155,62),
('El pajaro', 'accion', '1988', 108, 109, 299,63),
('Mundo helado', 'fantasia', '1995', 75, 120, 230,64),
('Bella durmiente', 'fantasia', '1994', 210, 77, 84,65),
('Superman Lego', 'fantasia', '1999', 350, 150, 300,66),
('Lego uno', 'fantasia', '2016', 354, 269, 375,67),
('Buscando a nemo', 'fantasia', '1999', 288, 225, 293,68),
('Minios', 'fantasia', '2012', 400, 245, 330,69),
('Los Vengadores', 'fantasia', '2012', 560, 297, 313,70),
('Minions dos', 'fantasia', '2011', 458, 135, 150,71),
('Minios tres', 'fantasia', '2006', 559, 333, 480,72),
('Escuadron suicida', 'fantasia', '2016', 580, 186, 233,73),
('Spiderman', 'fantasia', '2009', 492, 599, 550,74),
('Blanca nieves y los siete enanitos', 'fantasia', '1915', 550, 549, 535,75);
