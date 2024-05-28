
--        F U N C I O N E S      --

-- recursos humanos me pide que cuente los años de antiguedad para las vacaciones
-- de los empleados -- 

DROP FUNCTION IF EXISTS fn_empleados_vacaciones_antiguedad; 
DELIMITER //
CREATE FUNCTION fn_empleados_vacaciones_antiguedad (fechacontratacion date)
returns int
deterministic
reads sql data
COMMENT "ESTA FUNCION ME RETORNA LOS DIAS DE VACACIONES DE LOS EMPLEADOS"
 BEGIN
	DECLARE DIAS_VACACIONES INT;
    DECLARE ANTIGUEDAD INT;
    SET ANTIGUEDAD = timestampdiff(year,fechacontratacion,CURDATE());

IF ANTIGUEDAD <= 5 THEN SET DIAS_VACACIONES = 14;
	ELSEIF ANTIGUEDAD between 5 and 10 THEN SET DIAS_VACACIONES = 21 ; 
	ELSEIF ANTIGUEDAD between 10 and 20 THEN SET DIAS_VACACIONES = 28;
	ELSEIF ANTIGUEDAD > 20 THEN SET DIAS_VACACIONES = 35;
    else set ANTIGUEDAD = 0 ;
END IF;
return dias_vacaciones ;
END//
DELIMITER ;


-- FUNCIONES --
-- CREAME UNA FUNCION EN LA CUAL ME CALCULE UN DESCUENTO DEL 10% Y SI CON TARJETA DE 
-- CREDITO RECARGO DEL 35%. 

DROP FUNCTION IF EXISTS fn_calcular_precio_final_habitacion; 

DELIMITER //
CREATE FUNCTION fn_calcular_precio_final_habitacion (
	preciohabitacion DECIMAL (10,2)
    , fechaentrada DATE 
    , fechasalida DATE
    , formadepago VARCHAR (20))
RETURNS DECIMAL(10,2)
DETERMINISTIC
READS SQL DATA
COMMENT "ESTA FUNCION ME RETORNA EL PRECIO FINAL DE LA HABITACION"
BEGIN
DECLARE preciofinal DECIMAL (10,2);
DECLARE diasreserva INT ;
SET diasreserva = DATEDIFF(fechasalida, fechaentrada);
SET preciofinal = preciohabitacion * diasreserva ;

IF diasreserva <= 0 THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Error: La fecha de salida debe ser posterior a la fecha de entrada.';

ELSEIF formadepago = "Efectivo_o_Transferencia" THEN
	SET preciofinal = preciofinal * 0.90 ; -- descuento del 10 % --
ELSEIF formadepago = "Tarjeta_credito" THEN
	SET preciofinal = preciofinal * 1.35 ; -- recargo del 35%-- 
END IF; 
RETURN preciofinal; 
END// 
DELIMITER ; 
