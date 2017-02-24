USE tienda;
INSERT INTO imagen ( imagen) VALUES ( 'tienda/disco26');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

VALUES ( 'Rebeld Heart', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1994', 150, 99, 137, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ) );

INSERT INTO disco (idInventario, numCanciones, interprete) 
VALUES (  ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 15, 'Madonna');


INSERT INTO imagen ( imagen) 
VALUES ('tienda/disco27');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( '1000 forms of Year', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1999', 350, 372, 409, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) 
VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 11,'Sia');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco53');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'My Everything', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '2007', 150, 362, 400, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ),13, 'Ariana Grande');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco54');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Prism', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '2000', 200, 362, 655, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 15,'Katy Perry');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco55');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'The Pinkprint', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1998', 400, 362, 462, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ),18, 'Nicki Minaj');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco56');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'The New Classic', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '2007', 320, 120, 150, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ),45, 'Iggy Azalea');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco57');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( '1989', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '2012', 450, 151, 189, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 36,'Taylor Swift' );



INSERT INTO imagen ( imagen) VALUES ('tienda/disco58');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Reflection', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1999', 300, 120, 159, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 38,'Cafe Tacuba');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco59');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'For You', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1986', 450, 393, 480, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 11,'Selena Gomez');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco60');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Title', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '2005', 330, 99, 137, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ),25 ,'Meghan Trainor');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco61');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'V ', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1994', 500, 103, 230, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 23,' Maroon 5');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco62');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen)

	VALUES ( 'X', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '2003', 600, 293, 330, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ),16, ' Ed Sheeran');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco63');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Beyonce', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '2007', 320, 211, 420, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 16,'Beyonce');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco64');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( '5 Seconds of Summer', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '2003', 520, 648, 195, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 25,'5 Seconds of Summer');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco65');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'In The Lonely Hour', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1999', 360, 250, 215, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 45,'Sam Smith');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco66');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'True Colors', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1934', 219, 99, 152, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 18,'Zedd');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco67');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Handwritten', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1995', 276, 520, 801, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ),19 ,'Shawn Mendes');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco18');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'El circo', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1991', 300, 99, 117, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ),10 ,'Maldita Vecindad');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco69');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Ghost Stories', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '2005', 620, 97, 172, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 9,'Coldplay');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco70');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Four', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1973', 360, 168, 165, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 23,'One Direction');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco71');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Talk Dirty', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '2003', 492, 387, 472, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 19,'Jason Derulo');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco72');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Thrillert', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '2006', 130, 340, 460, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 30,'Michael Jackson');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco73');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Their Greatest', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1998', 395, 392, 350, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ),11,'Eagles');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco74');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Jagged Little Pill', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'), '1996', 421, 99, 120, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 17,'Alanis Morissette ');



INSERT INTO imagen ( imagen) VALUES ('tienda/disco75');

INSERT INTO inventario ( nombre, idCategoria, anio, numPiezas, precioCompra, precioVenta, idImagen) 

	VALUES ( 'Dangerous', (SELECT idCategoria FROM categoria WHERE categoria = 'pop'),'1992', 389, 140, 190, ( SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1 ));

INSERT INTO disco (idInventario, numCanciones, interprete) VALUES ( ( SELECT idInventario FROM inventario  order by idInventario DESC limit 1 ), 28,'Michael Jackson');
