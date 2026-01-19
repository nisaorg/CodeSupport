/*Creamos la base de datos*/
CREATE DATABASE libreria;
/*La seleccionamos como base de datos por defecto*/
USE libreria;
/*Creamos la tabla*/
CREATE TABLE libro (
    id_libro INT UNSIGNED PRIMARY KEY,
    titulo VARCHAR(64) NOT NULL,
    autor VARCHAR(32),
    anyo INT,
    precio DECIMAL(10, 2)
);
/*Insertamos los registros*/
INSERT INTO libro VALUES (1, 'La comunidad del anillo', 'J. R. R. Tolkien', 1954, 9.95);
INSERT INTO libro VALUES (2, 'Las dos torres', 'J. R. R. Tolkien', 1954, 8.95);
INSERT INTO libro VALUES (3, 'El retorno del rey', 'J. R. R. Tolkien', 1955, 9.95);
INSERT INTO libro VALUES (4, 'Las aventuras del capitán Alatriste', 'Arturo Pérez Reverte', 1996, 7.86);
INSERT INTO libro VALUES (5, 'Limpieza de sangre', 'Arturo Pérez Reverte', 1997, NULL);
INSERT INTO libro VALUES (6, 'El sol de Breda', 'Arturo Pérez Reverte', 1998, 8.99);
INSERT INTO libro VALUES (7, 'El oro del rey', 'Arturo Pérez Reverte', 2000, 10.55);
INSERT INTO libro VALUES (8, 'El nombre de la rosa', 'Umberto Eco', 1980, 8.57);
INSERT INTO libro VALUES (9, 'Los pilares de la Tierra', 'Ken Follett', 1989, 11.32);
INSERT INTO libro VALUES (10, 'El Lazarillo de Tormes', NULL, 1554, 6.12);
