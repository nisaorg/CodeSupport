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

