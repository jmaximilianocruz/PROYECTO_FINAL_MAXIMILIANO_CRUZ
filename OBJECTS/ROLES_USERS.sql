
-- CREAR USUARIOS -- 

CREATE USER IF NOT EXISTS "administrador1"@"%" IDENTIFIED BY "1234"
	PASSWORD EXPIRE NEVER
	FAILED_LOGIN_ATTEMPTS 5
	PASSWORD_LOCK_TIME 1 
    COMMENT "ADMINISTRADOR GENERAL";
GRANT ALL ON  spa_los_robles TO "administrador1"@"%";


CREATE USER IF NOT EXISTS "administrador2"@"%" IDENTIFIED BY "1234"
	WITH MAX_QUERIES_PER_HOUR 200 MAX_UPDATES_PER_HOUR 100
	PASSWORD EXPIRE INTERVAL 60 DAY
	FAILED_LOGIN_ATTEMPTS 5
	PASSWORD_LOCK_TIME 1
    COMMENT "ASISTENTE DE GERENTE";
GRANT ALL ON  spa_los_robles TO "administrador2"@"%";


CREATE USER IF NOT EXISTS "administrador3"@"%" IDENTIFIED BY "1234"
	PASSWORD EXPIRE INTERVAL 60 DAY
	FAILED_LOGIN_ATTEMPTS 5
	PASSWORD_LOCK_TIME 1 ; 
GRANT SELECT,INSERT ON spa_los_robles.reserva TO "administrador3"@"%" ; 


CREATE USER IF NOT EXISTS "administrador4"@"%" IDENTIFIED BY "1234"
	PASSWORD EXPIRE INTERVAL 30 DAY
    FAILED_LOGIN_ATTEMPTS 5
	PASSWORD_LOCK_TIME 1 ;
GRANT SELECT , INSERT ON spa_los_robles.empleado TO "administrador4"@"%";
