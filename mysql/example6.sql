CREATE DATABASE IF NOT EXISTS example_db;
USE example_db;

CREATE TABLE IF NOT EXISTS ejemplo_tabla (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL
);

INSERT INTO ejemplo_tabla (nombre, fecha) VALUES
('Carlos', '2024-01-15'),
('Ana', '2024-02-20'),
('Luis', '2024-03-10');
