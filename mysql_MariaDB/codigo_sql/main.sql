/*Almacenamiento de informacion en memoria*/
SET @nombre="NombreUsuario";
SET @digito=1234567890;
SET @fecha='2026-04-30';
/*Output por consola de contenido almacenado*/
SELECT @nombre;

/*Cambiar valor*/
SET @digito=@digito+3;
SET @fecha=NULL;

/*Condicionales*/
SET @num1=1;
SET @num2=7;
SET @test=NULL;

IF @num1=@num2 THEN
    SET @test="Salida1";
ELSEIF @num1>@num2 THEN
    SET @test="Salida2";
ELSEIF @num1<@num2 THEN
    SET @test="Salida3";
ELSE
    SET @test="Salida por defecto";
END IF;


/*Todas las sentncias que no van tabuladas, deben ir delimitadas, mientras que las que van tabuladas, deben cerrarse con ";" */
DELIMITER //
SET @a=2026//
IF (a % 4 = 0 AND a % 100 != 0) OR (a % 400 = 0) THEN
    SELECT 'Bisiesto';
ELSE
    SELECT 'No Bisiesto';
END IF//
DELIMITER ;

DELIMITER //
SET @x=10//
WHILE @x>0 do
    sET @X=@X-1;
    SELECT @X;
END WHILE//
DELIMITER ;

DELIMITER //
CREATE FUNCTION suma(x INT, y INT) RETURNS INT
BEGIN
    RETURN x+y;
END//

DELIMITER ;

SELECT suma(15, 2);
SET @resultado=suma(15, -5);
SELECT suma(suma(10, 5), 15);

DELIMITER //
CREATE OR REPLACE FUNCTION esbisiesto(anyo INT) RETURNS BOOLEAN
DETERMINISTIC /*Depende del valor que se le pasa como parametro*/
    DECLARE resultado BOOLEAN;
    IF (anyo % 4 and anyo % 100 != 0) OR (anyo % 400 = 0) THEN 
        SET resultado=TRUE;
    ELSE
        SET resultado=FALSE;
    END IF;
    RETURN resultado;
END//
DELIMITER ;

/*Si el resto de la division es cero == el divisor es divisible por el diviso*/
DELIMITER //
CREATE OR REPLACE FUNCTION esDivisible(digit INT, digit2 INT) RETURNS BOOLEAN
DETERMINISTIC
    DECLARE resultado2 BOOLEAN;
    IF (digit % digit2 = 0) THEN
        SET resultado2=TRUE;
    ELSE
        SET resultado2=FALSE;
    END IF;
    RETURN resultado2;
END//
DELIMITER ;

/*Comprobacion de llamada de funcion*/
SELECT esDivisible(4,2); --TRUE
SELECT esDivisible(2,2); -- TRUE
SELECT esDivisible(15,-3); -- TRUE
SELECT esDivisible(8,3); -- FALSE