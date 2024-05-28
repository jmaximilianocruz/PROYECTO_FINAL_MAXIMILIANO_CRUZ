
-- STORE PROCEDURES: "GESTIONRESERVA", este procedimiento toma como parametros el ID
-- del cliente, el ID de la habitacion, la fecha de entrada y la fecha de salida. Luego
-- verifica si la habitacion esta disponible para las fechas especificadas y realiza la reserva
-- si esta disponible. 

DROP PROCEDURE IF EXISTS sp_gestionarReserva;

DELIMITER //
CREATE PROCEDURE sp_gestionarReserva (
IN idcliente INT,
IN idhabitacion INT,
IN fechaentrada DATE,
IN fechasalida DATE
)
BEGIN
DECLARE disponible INT; 
-- verificar si la habitacion esta disponible para hacer la reserva las fechas seleccionadas --
SELECT COUNT(*) INTO disponible
FROM habitacion
WHERE idhabitacion = idhabitacion
AND ((fechaentrada BETWEEN fechaentrada AND fechasalida)
OR (fechasalida BETWEEN fechaentrada AND fechasalida));
-- si la habitacion esta disponible realiza la reserva -- 
IF disponible = 0 THEN
INSERT INTO reserva (idcliente, idhabitacion, fechaentrada, fechasalida)
VALUES (idcliente, idhabitacion, fechaentrada, fechasalida); 
SELECT  "RESERVA REALIZADA CORRECTAMENTE" ;
ELSE 
SIGNAL SQLSTATE "45000" 
SET message_text = "LO SENTIMOS,LA HABITACION NO ESTA DISPONIBLE";
END IF; 
END // 
DELIMITER ; 

 
-- STORE PROCEDURES "CANCELARRESERVA" es un procedimiento utilizado para cancelar una --
-- reserva y gestionar el reembolso del dinero si la misma se realizo dentro de las 48 HS--

DROP PROCEDURE IF EXISTS sp_cancelar_reserva_con_reembolso;

CREATE PROCEDURE sp_cancelar_reserva_con_reembolso (
IN idcliente INT, 
IN idreserva INT, 
IN fechaentrada DATETIME,
IN cancelacion DATETIME
)
BEGIN
DECLARE fechaactual DATE
DECLARE fechaentrada DATE
DECLARE diferenciahoras INT,


    -- Obtener la fecha de la reserva
    SELECT fechaentrada = fechareserva
    FROM reserva
    WHERE idreserva= idreserva
    -- Calcular la diferencia en horas entre la fecha actual y la fecha de la reserva
    SET diferenciahoras = DATEDIFF(HOUR, fechareserva, fechaactual)

    -- Verificar si la reserva existe
    IF diferenciahoras <= 48
    BEGIN
        -- Cancelar la reserva
        UPDATE reserva
        SET estado = 'Cancelada'
        WHERE idreserva = idreserva 
	comment 'Reserva cancelada con éxito. Se ha iniciado el proceso de reembolso.'
    END IF
    END//
    DELIMITER ;

