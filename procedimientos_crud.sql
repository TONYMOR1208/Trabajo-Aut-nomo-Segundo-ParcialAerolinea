
        CREATE OR REPLACE PROCEDURE sp_create_aerolineas(p_('AEROLINEA_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('PAIS', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            INSERT INTO aerolineas (aerolinea_id, nombre, pais)
            VALUES (p_aerolinea_id, p_nombre, p_pais);
            COMMIT;
        END sp_create_aerolineas;
        

        CREATE OR REPLACE PROCEDURE sp_read_aerolineas (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT aerolinea_id, nombre, pais
            FROM aerolineas
            WHERE aerolinea_id = p_id;
        END sp_read_aerolineas;
        

        CREATE OR REPLACE PROCEDURE sp_update_aerolineas (p_('AEROLINEA_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('PAIS', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            UPDATE aerolineas
            SET nombre = p_nombre, pais = p_pais
            WHERE aerolinea_id = p_aerolinea_id;
            COMMIT;
        END sp_update_aerolineas;
        

        CREATE OR REPLACE PROCEDURE sp_delete_aerolineas (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM aerolineas
            WHERE aerolinea_id = p_id;
            COMMIT;
        END sp_delete_aerolineas;
        

        CREATE OR REPLACE PROCEDURE sp_create_aeropuertos(p_('AEROPUERTO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('CIUDAD', 'VARCHAR2') VARCHAR2, p_('PAIS', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            INSERT INTO aeropuertos (aeropuerto_id, nombre, ciudad, pais)
            VALUES (p_aeropuerto_id, p_nombre, p_ciudad, p_pais);
            COMMIT;
        END sp_create_aeropuertos;
        

        CREATE OR REPLACE PROCEDURE sp_read_aeropuertos (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT aeropuerto_id, nombre, ciudad, pais
            FROM aeropuertos
            WHERE aeropuerto_id = p_id;
        END sp_read_aeropuertos;
        

        CREATE OR REPLACE PROCEDURE sp_update_aeropuertos (p_('AEROPUERTO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('CIUDAD', 'VARCHAR2') VARCHAR2, p_('PAIS', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            UPDATE aeropuertos
            SET nombre = p_nombre, ciudad = p_ciudad, pais = p_pais
            WHERE aeropuerto_id = p_aeropuerto_id;
            COMMIT;
        END sp_update_aeropuertos;
        

        CREATE OR REPLACE PROCEDURE sp_delete_aeropuertos (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM aeropuertos
            WHERE aeropuerto_id = p_id;
            COMMIT;
        END sp_delete_aeropuertos;
        

        CREATE OR REPLACE PROCEDURE sp_create_asientos(p_('ASIENTO_ID', 'NUMBER') NUMBER, p_('VUELO_ID', 'NUMBER') NUMBER, p_('NUMERO_ASIENTO', 'VARCHAR2') VARCHAR2, p_('CLASE_VUELO_ID', 'NUMBER') NUMBER) IS
        BEGIN
            INSERT INTO asientos (asiento_id, vuelo_id, numero_asiento, clase_vuelo_id)
            VALUES (p_asiento_id, p_vuelo_id, p_numero_asiento, p_clase_vuelo_id);
            COMMIT;
        END sp_create_asientos;
        

        CREATE OR REPLACE PROCEDURE sp_read_asientos (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT asiento_id, vuelo_id, numero_asiento, clase_vuelo_id
            FROM asientos
            WHERE asiento_id = p_id;
        END sp_read_asientos;
        

        CREATE OR REPLACE PROCEDURE sp_update_asientos (p_('ASIENTO_ID', 'NUMBER') NUMBER, p_('VUELO_ID', 'NUMBER') NUMBER, p_('NUMERO_ASIENTO', 'VARCHAR2') VARCHAR2, p_('CLASE_VUELO_ID', 'NUMBER') NUMBER) IS
        BEGIN
            UPDATE asientos
            SET vuelo_id = p_vuelo_id, numero_asiento = p_numero_asiento, clase_vuelo_id = p_clase_vuelo_id
            WHERE asiento_id = p_asiento_id;
            COMMIT;
        END sp_update_asientos;
        

        CREATE OR REPLACE PROCEDURE sp_delete_asientos (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM asientos
            WHERE asiento_id = p_id;
            COMMIT;
        END sp_delete_asientos;
        

        CREATE OR REPLACE PROCEDURE sp_create_clases_de_vuelo(p_('CLASE_VUELO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('DESCRIPCION', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            INSERT INTO clases_de_vuelo (clase_vuelo_id, nombre, descripcion)
            VALUES (p_clase_vuelo_id, p_nombre, p_descripcion);
            COMMIT;
        END sp_create_clases_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_read_clases_de_vuelo (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT clase_vuelo_id, nombre, descripcion
            FROM clases_de_vuelo
            WHERE clase_vuelo_id = p_id;
        END sp_read_clases_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_update_clases_de_vuelo (p_('CLASE_VUELO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('DESCRIPCION', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            UPDATE clases_de_vuelo
            SET nombre = p_nombre, descripcion = p_descripcion
            WHERE clase_vuelo_id = p_clase_vuelo_id;
            COMMIT;
        END sp_update_clases_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_delete_clases_de_vuelo (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM clases_de_vuelo
            WHERE clase_vuelo_id = p_id;
            COMMIT;
        END sp_delete_clases_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_create_comentarios_de_usuarios(p_('COMENTARIO_ID', 'NUMBER') NUMBER, p_('USUARIO_ID', 'NUMBER') NUMBER, p_('COMENTARIO', 'VARCHAR2') VARCHAR2, p_('FECHA_COMENTARIO', 'DATE') DATE) IS
        BEGIN
            INSERT INTO comentarios_de_usuarios (comentario_id, usuario_id, comentario, fecha_comentario)
            VALUES (p_comentario_id, p_usuario_id, p_comentario, p_fecha_comentario);
            COMMIT;
        END sp_create_comentarios_de_usuarios;
        

        CREATE OR REPLACE PROCEDURE sp_read_comentarios_de_usuarios (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT comentario_id, usuario_id, comentario, fecha_comentario
            FROM comentarios_de_usuarios
            WHERE comentario_id = p_id;
        END sp_read_comentarios_de_usuarios;
        

        CREATE OR REPLACE PROCEDURE sp_update_comentarios_de_usuarios (p_('COMENTARIO_ID', 'NUMBER') NUMBER, p_('USUARIO_ID', 'NUMBER') NUMBER, p_('COMENTARIO', 'VARCHAR2') VARCHAR2, p_('FECHA_COMENTARIO', 'DATE') DATE) IS
        BEGIN
            UPDATE comentarios_de_usuarios
            SET usuario_id = p_usuario_id, comentario = p_comentario, fecha_comentario = p_fecha_comentario
            WHERE comentario_id = p_comentario_id;
            COMMIT;
        END sp_update_comentarios_de_usuarios;
        

        CREATE OR REPLACE PROCEDURE sp_delete_comentarios_de_usuarios (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM comentarios_de_usuarios
            WHERE comentario_id = p_id;
            COMMIT;
        END sp_delete_comentarios_de_usuarios;
        

        CREATE OR REPLACE PROCEDURE sp_create_contactos_de_emergencia_de_pasajeros(p_('CONTACTO_ID', 'NUMBER') NUMBER, p_('PASAJERO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('APELLIDO', 'VARCHAR2') VARCHAR2, p_('TELEFONO', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            INSERT INTO contactos_de_emergencia_de_pasajeros (contacto_id, pasajero_id, nombre, apellido, telefono)
            VALUES (p_contacto_id, p_pasajero_id, p_nombre, p_apellido, p_telefono);
            COMMIT;
        END sp_create_contactos_de_emergencia_de_pasajeros;
        

        CREATE OR REPLACE PROCEDURE sp_read_contactos_de_emergencia_de_pasajeros (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT contacto_id, pasajero_id, nombre, apellido, telefono
            FROM contactos_de_emergencia_de_pasajeros
            WHERE contacto_id = p_id;
        END sp_read_contactos_de_emergencia_de_pasajeros;
        

        CREATE OR REPLACE PROCEDURE sp_update_contactos_de_emergencia_de_pasajeros (p_('CONTACTO_ID', 'NUMBER') NUMBER, p_('PASAJERO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('APELLIDO', 'VARCHAR2') VARCHAR2, p_('TELEFONO', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            UPDATE contactos_de_emergencia_de_pasajeros
            SET pasajero_id = p_pasajero_id, nombre = p_nombre, apellido = p_apellido, telefono = p_telefono
            WHERE contacto_id = p_contacto_id;
            COMMIT;
        END sp_update_contactos_de_emergencia_de_pasajeros;
        

        CREATE OR REPLACE PROCEDURE sp_delete_contactos_de_emergencia_de_pasajeros (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM contactos_de_emergencia_de_pasajeros
            WHERE contacto_id = p_id;
            COMMIT;
        END sp_delete_contactos_de_emergencia_de_pasajeros;
        

        CREATE OR REPLACE PROCEDURE sp_create_equipaje(p_('EQUIPAJE_ID', 'NUMBER') NUMBER, p_('PASAJERO_ID', 'NUMBER') NUMBER, p_('PESO_KG', 'NUMBER') NUMBER) IS
        BEGIN
            INSERT INTO equipaje (equipaje_id, pasajero_id, peso_kg)
            VALUES (p_equipaje_id, p_pasajero_id, p_peso_kg);
            COMMIT;
        END sp_create_equipaje;
        

        CREATE OR REPLACE PROCEDURE sp_read_equipaje (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT equipaje_id, pasajero_id, peso_kg
            FROM equipaje
            WHERE equipaje_id = p_id;
        END sp_read_equipaje;
        

        CREATE OR REPLACE PROCEDURE sp_update_equipaje (p_('EQUIPAJE_ID', 'NUMBER') NUMBER, p_('PASAJERO_ID', 'NUMBER') NUMBER, p_('PESO_KG', 'NUMBER') NUMBER) IS
        BEGIN
            UPDATE equipaje
            SET pasajero_id = p_pasajero_id, peso_kg = p_peso_kg
            WHERE equipaje_id = p_equipaje_id;
            COMMIT;
        END sp_update_equipaje;
        

        CREATE OR REPLACE PROCEDURE sp_delete_equipaje (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM equipaje
            WHERE equipaje_id = p_id;
            COMMIT;
        END sp_delete_equipaje;
        

        CREATE OR REPLACE PROCEDURE sp_create_equipos(p_('EQUIPO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('DESCRIPCION', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            INSERT INTO equipos (equipo_id, nombre, descripcion)
            VALUES (p_equipo_id, p_nombre, p_descripcion);
            COMMIT;
        END sp_create_equipos;
        

        CREATE OR REPLACE PROCEDURE sp_read_equipos (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT equipo_id, nombre, descripcion
            FROM equipos
            WHERE equipo_id = p_id;
        END sp_read_equipos;
        

        CREATE OR REPLACE PROCEDURE sp_update_equipos (p_('EQUIPO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('DESCRIPCION', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            UPDATE equipos
            SET nombre = p_nombre, descripcion = p_descripcion
            WHERE equipo_id = p_equipo_id;
            COMMIT;
        END sp_update_equipos;
        

        CREATE OR REPLACE PROCEDURE sp_delete_equipos (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM equipos
            WHERE equipo_id = p_id;
            COMMIT;
        END sp_delete_equipos;
        

        CREATE OR REPLACE PROCEDURE sp_create_pasajeros(p_('PASAJERO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('APELLIDO', 'VARCHAR2') VARCHAR2, p_('EMAIL', 'VARCHAR2') VARCHAR2, p_('TELEFONO', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            INSERT INTO pasajeros (pasajero_id, nombre, apellido, email, telefono)
            VALUES (p_pasajero_id, p_nombre, p_apellido, p_email, p_telefono);
            COMMIT;
        END sp_create_pasajeros;
        

        CREATE OR REPLACE PROCEDURE sp_read_pasajeros (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT pasajero_id, nombre, apellido, email, telefono
            FROM pasajeros
            WHERE pasajero_id = p_id;
        END sp_read_pasajeros;
        

        CREATE OR REPLACE PROCEDURE sp_update_pasajeros (p_('PASAJERO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('APELLIDO', 'VARCHAR2') VARCHAR2, p_('EMAIL', 'VARCHAR2') VARCHAR2, p_('TELEFONO', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            UPDATE pasajeros
            SET nombre = p_nombre, apellido = p_apellido, email = p_email, telefono = p_telefono
            WHERE pasajero_id = p_pasajero_id;
            COMMIT;
        END sp_update_pasajeros;
        

        CREATE OR REPLACE PROCEDURE sp_delete_pasajeros (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM pasajeros
            WHERE pasajero_id = p_id;
            COMMIT;
        END sp_delete_pasajeros;
        

        CREATE OR REPLACE PROCEDURE sp_create_precios_de_clases_de_vuelo(p_('PRECIO_ID', 'NUMBER') NUMBER, p_('CLASE_VUELO_ID', 'NUMBER') NUMBER, p_('PRECIO', 'NUMBER') NUMBER) IS
        BEGIN
            INSERT INTO precios_de_clases_de_vuelo (precio_id, clase_vuelo_id, precio)
            VALUES (p_precio_id, p_clase_vuelo_id, p_precio);
            COMMIT;
        END sp_create_precios_de_clases_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_read_precios_de_clases_de_vuelo (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT precio_id, clase_vuelo_id, precio
            FROM precios_de_clases_de_vuelo
            WHERE precio_id = p_id;
        END sp_read_precios_de_clases_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_update_precios_de_clases_de_vuelo (p_('PRECIO_ID', 'NUMBER') NUMBER, p_('CLASE_VUELO_ID', 'NUMBER') NUMBER, p_('PRECIO', 'NUMBER') NUMBER) IS
        BEGIN
            UPDATE precios_de_clases_de_vuelo
            SET clase_vuelo_id = p_clase_vuelo_id, precio = p_precio
            WHERE precio_id = p_precio_id;
            COMMIT;
        END sp_update_precios_de_clases_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_delete_precios_de_clases_de_vuelo (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM precios_de_clases_de_vuelo
            WHERE precio_id = p_id;
            COMMIT;
        END sp_delete_precios_de_clases_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_create_reservas(p_('RESERVA_ID', 'NUMBER') NUMBER, p_('VUELO_ID', 'NUMBER') NUMBER, p_('PASAJERO_ID', 'NUMBER') NUMBER, p_('FECHA_RESERVA', 'DATE') DATE) IS
        BEGIN
            INSERT INTO reservas (reserva_id, vuelo_id, pasajero_id, fecha_reserva)
            VALUES (p_reserva_id, p_vuelo_id, p_pasajero_id, p_fecha_reserva);
            COMMIT;
        END sp_create_reservas;
        

        CREATE OR REPLACE PROCEDURE sp_read_reservas (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT reserva_id, vuelo_id, pasajero_id, fecha_reserva
            FROM reservas
            WHERE reserva_id = p_id;
        END sp_read_reservas;
        

        CREATE OR REPLACE PROCEDURE sp_update_reservas (p_('RESERVA_ID', 'NUMBER') NUMBER, p_('VUELO_ID', 'NUMBER') NUMBER, p_('PASAJERO_ID', 'NUMBER') NUMBER, p_('FECHA_RESERVA', 'DATE') DATE) IS
        BEGIN
            UPDATE reservas
            SET vuelo_id = p_vuelo_id, pasajero_id = p_pasajero_id, fecha_reserva = p_fecha_reserva
            WHERE reserva_id = p_reserva_id;
            COMMIT;
        END sp_update_reservas;
        

        CREATE OR REPLACE PROCEDURE sp_delete_reservas (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM reservas
            WHERE reserva_id = p_id;
            COMMIT;
        END sp_delete_reservas;
        

        CREATE OR REPLACE PROCEDURE sp_create_roles(p_('ROL_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            INSERT INTO roles (rol_id, nombre)
            VALUES (p_rol_id, p_nombre);
            COMMIT;
        END sp_create_roles;
        

        CREATE OR REPLACE PROCEDURE sp_read_roles (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT rol_id, nombre
            FROM roles
            WHERE rol_id = p_id;
        END sp_read_roles;
        

        CREATE OR REPLACE PROCEDURE sp_update_roles (p_('ROL_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            UPDATE roles
            SET nombre = p_nombre
            WHERE rol_id = p_rol_id;
            COMMIT;
        END sp_update_roles;
        

        CREATE OR REPLACE PROCEDURE sp_delete_roles (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM roles
            WHERE rol_id = p_id;
            COMMIT;
        END sp_delete_roles;
        

        CREATE OR REPLACE PROCEDURE sp_create_rutas_de_vuelo(p_('RUTA_VUELO_ID', 'NUMBER') NUMBER, p_('ORIGEN_AEROPUERTO_ID', 'NUMBER') NUMBER, p_('DESTINO_AEROPUERTO_ID', 'NUMBER') NUMBER, p_('DISTANCIA_KM', 'NUMBER') NUMBER) IS
        BEGIN
            INSERT INTO rutas_de_vuelo (ruta_vuelo_id, origen_aeropuerto_id, destino_aeropuerto_id, distancia_km)
            VALUES (p_ruta_vuelo_id, p_origen_aeropuerto_id, p_destino_aeropuerto_id, p_distancia_km);
            COMMIT;
        END sp_create_rutas_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_read_rutas_de_vuelo (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT ruta_vuelo_id, origen_aeropuerto_id, destino_aeropuerto_id, distancia_km
            FROM rutas_de_vuelo
            WHERE ruta_vuelo_id = p_id;
        END sp_read_rutas_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_update_rutas_de_vuelo (p_('RUTA_VUELO_ID', 'NUMBER') NUMBER, p_('ORIGEN_AEROPUERTO_ID', 'NUMBER') NUMBER, p_('DESTINO_AEROPUERTO_ID', 'NUMBER') NUMBER, p_('DISTANCIA_KM', 'NUMBER') NUMBER) IS
        BEGIN
            UPDATE rutas_de_vuelo
            SET origen_aeropuerto_id = p_origen_aeropuerto_id, destino_aeropuerto_id = p_destino_aeropuerto_id, distancia_km = p_distancia_km
            WHERE ruta_vuelo_id = p_ruta_vuelo_id;
            COMMIT;
        END sp_update_rutas_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_delete_rutas_de_vuelo (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM rutas_de_vuelo
            WHERE ruta_vuelo_id = p_id;
            COMMIT;
        END sp_delete_rutas_de_vuelo;
        

        CREATE OR REPLACE PROCEDURE sp_create_tarjetas_de_embarque(p_('TARJETA_EMBARQUE_ID', 'NUMBER') NUMBER, p_('RESERVA_ID', 'NUMBER') NUMBER, p_('ASIENTO_ID', 'NUMBER') NUMBER) IS
        BEGIN
            INSERT INTO tarjetas_de_embarque (tarjeta_embarque_id, reserva_id, asiento_id)
            VALUES (p_tarjeta_embarque_id, p_reserva_id, p_asiento_id);
            COMMIT;
        END sp_create_tarjetas_de_embarque;
        

        CREATE OR REPLACE PROCEDURE sp_read_tarjetas_de_embarque (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT tarjeta_embarque_id, reserva_id, asiento_id
            FROM tarjetas_de_embarque
            WHERE tarjeta_embarque_id = p_id;
        END sp_read_tarjetas_de_embarque;
        

        CREATE OR REPLACE PROCEDURE sp_update_tarjetas_de_embarque (p_('TARJETA_EMBARQUE_ID', 'NUMBER') NUMBER, p_('RESERVA_ID', 'NUMBER') NUMBER, p_('ASIENTO_ID', 'NUMBER') NUMBER) IS
        BEGIN
            UPDATE tarjetas_de_embarque
            SET reserva_id = p_reserva_id, asiento_id = p_asiento_id
            WHERE tarjeta_embarque_id = p_tarjeta_embarque_id;
            COMMIT;
        END sp_update_tarjetas_de_embarque;
        

        CREATE OR REPLACE PROCEDURE sp_delete_tarjetas_de_embarque (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM tarjetas_de_embarque
            WHERE tarjeta_embarque_id = p_id;
            COMMIT;
        END sp_delete_tarjetas_de_embarque;
        

        CREATE OR REPLACE PROCEDURE sp_create_tripulacion(p_('TRIPULACION_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('APELLIDO', 'VARCHAR2') VARCHAR2, p_('ROL', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            INSERT INTO tripulacion (tripulacion_id, nombre, apellido, rol)
            VALUES (p_tripulacion_id, p_nombre, p_apellido, p_rol);
            COMMIT;
        END sp_create_tripulacion;
        

        CREATE OR REPLACE PROCEDURE sp_read_tripulacion (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT tripulacion_id, nombre, apellido, rol
            FROM tripulacion
            WHERE tripulacion_id = p_id;
        END sp_read_tripulacion;
        

        CREATE OR REPLACE PROCEDURE sp_update_tripulacion (p_('TRIPULACION_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('APELLIDO', 'VARCHAR2') VARCHAR2, p_('ROL', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            UPDATE tripulacion
            SET nombre = p_nombre, apellido = p_apellido, rol = p_rol
            WHERE tripulacion_id = p_tripulacion_id;
            COMMIT;
        END sp_update_tripulacion;
        

        CREATE OR REPLACE PROCEDURE sp_delete_tripulacion (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM tripulacion
            WHERE tripulacion_id = p_id;
            COMMIT;
        END sp_delete_tripulacion;
        

        CREATE OR REPLACE PROCEDURE sp_create_tripulaciones_vuelos(p_('TRIPULACION_ID', 'NUMBER') NUMBER, p_('VUELO_ID', 'NUMBER') NUMBER) IS
        BEGIN
            INSERT INTO tripulaciones_vuelos (tripulacion_id, vuelo_id)
            VALUES (p_tripulacion_id, p_vuelo_id);
            COMMIT;
        END sp_create_tripulaciones_vuelos;
        

        CREATE OR REPLACE PROCEDURE sp_read_tripulaciones_vuelos (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT tripulacion_id, vuelo_id
            FROM tripulaciones_vuelos
            WHERE tripulacion_id = p_id;
        END sp_read_tripulaciones_vuelos;
        

        CREATE OR REPLACE PROCEDURE sp_update_tripulaciones_vuelos (p_('TRIPULACION_ID', 'NUMBER') NUMBER, p_('VUELO_ID', 'NUMBER') NUMBER) IS
        BEGIN
            UPDATE tripulaciones_vuelos
            SET vuelo_id = p_vuelo_id
            WHERE tripulacion_id = p_tripulacion_id;
            COMMIT;
        END sp_update_tripulaciones_vuelos;
        

        CREATE OR REPLACE PROCEDURE sp_delete_tripulaciones_vuelos (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM tripulaciones_vuelos
            WHERE tripulacion_id = p_id;
            COMMIT;
        END sp_delete_tripulaciones_vuelos;
        

        CREATE OR REPLACE PROCEDURE sp_create_usuarios(p_('USUARIO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('APELLIDO', 'VARCHAR2') VARCHAR2, p_('EMAIL', 'VARCHAR2') VARCHAR2, p_('FECHA_REGISTRO', 'DATE') DATE) IS
        BEGIN
            INSERT INTO usuarios (usuario_id, nombre, apellido, email, fecha_registro)
            VALUES (p_usuario_id, p_nombre, p_apellido, p_email, p_fecha_registro);
            COMMIT;
        END sp_create_usuarios;
        

        CREATE OR REPLACE PROCEDURE sp_read_usuarios (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT usuario_id, nombre, apellido, email, fecha_registro
            FROM usuarios
            WHERE usuario_id = p_id;
        END sp_read_usuarios;
        

        CREATE OR REPLACE PROCEDURE sp_update_usuarios (p_('USUARIO_ID', 'NUMBER') NUMBER, p_('NOMBRE', 'VARCHAR2') VARCHAR2, p_('APELLIDO', 'VARCHAR2') VARCHAR2, p_('EMAIL', 'VARCHAR2') VARCHAR2, p_('FECHA_REGISTRO', 'DATE') DATE) IS
        BEGIN
            UPDATE usuarios
            SET nombre = p_nombre, apellido = p_apellido, email = p_email, fecha_registro = p_fecha_registro
            WHERE usuario_id = p_usuario_id;
            COMMIT;
        END sp_update_usuarios;
        

        CREATE OR REPLACE PROCEDURE sp_delete_usuarios (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM usuarios
            WHERE usuario_id = p_id;
            COMMIT;
        END sp_delete_usuarios;
        

        CREATE OR REPLACE PROCEDURE sp_create_usuarios_roles(p_('USUARIO_ID', 'NUMBER') NUMBER, p_('ROL_ID', 'NUMBER') NUMBER) IS
        BEGIN
            INSERT INTO usuarios_roles (usuario_id, rol_id)
            VALUES (p_usuario_id, p_rol_id);
            COMMIT;
        END sp_create_usuarios_roles;
        

        CREATE OR REPLACE PROCEDURE sp_read_usuarios_roles (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT usuario_id, rol_id
            FROM usuarios_roles
            WHERE usuario_id = p_id;
        END sp_read_usuarios_roles;
        

        CREATE OR REPLACE PROCEDURE sp_update_usuarios_roles (p_('USUARIO_ID', 'NUMBER') NUMBER, p_('ROL_ID', 'NUMBER') NUMBER) IS
        BEGIN
            UPDATE usuarios_roles
            SET rol_id = p_rol_id
            WHERE usuario_id = p_usuario_id;
            COMMIT;
        END sp_update_usuarios_roles;
        

        CREATE OR REPLACE PROCEDURE sp_delete_usuarios_roles (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM usuarios_roles
            WHERE usuario_id = p_id;
            COMMIT;
        END sp_delete_usuarios_roles;
        

        CREATE OR REPLACE PROCEDURE sp_create_valoraciones_de_vuelos(p_('VALORACION_ID', 'NUMBER') NUMBER, p_('VUELO_ID', 'NUMBER') NUMBER, p_('USUARIO_ID', 'NUMBER') NUMBER, p_('VALORACION', 'NUMBER') NUMBER, p_('COMENTARIO', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            INSERT INTO valoraciones_de_vuelos (valoracion_id, vuelo_id, usuario_id, valoracion, comentario)
            VALUES (p_valoracion_id, p_vuelo_id, p_usuario_id, p_valoracion, p_comentario);
            COMMIT;
        END sp_create_valoraciones_de_vuelos;
        

        CREATE OR REPLACE PROCEDURE sp_read_valoraciones_de_vuelos (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT valoracion_id, vuelo_id, usuario_id, valoracion, comentario
            FROM valoraciones_de_vuelos
            WHERE valoracion_id = p_id;
        END sp_read_valoraciones_de_vuelos;
        

        CREATE OR REPLACE PROCEDURE sp_update_valoraciones_de_vuelos (p_('VALORACION_ID', 'NUMBER') NUMBER, p_('VUELO_ID', 'NUMBER') NUMBER, p_('USUARIO_ID', 'NUMBER') NUMBER, p_('VALORACION', 'NUMBER') NUMBER, p_('COMENTARIO', 'VARCHAR2') VARCHAR2) IS
        BEGIN
            UPDATE valoraciones_de_vuelos
            SET vuelo_id = p_vuelo_id, usuario_id = p_usuario_id, valoracion = p_valoracion, comentario = p_comentario
            WHERE valoracion_id = p_valoracion_id;
            COMMIT;
        END sp_update_valoraciones_de_vuelos;
        

        CREATE OR REPLACE PROCEDURE sp_delete_valoraciones_de_vuelos (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM valoraciones_de_vuelos
            WHERE valoracion_id = p_id;
            COMMIT;
        END sp_delete_valoraciones_de_vuelos;
        

        CREATE OR REPLACE PROCEDURE sp_create_vuelos(p_('VUELO_ID', 'NUMBER') NUMBER, p_('AEROLINEA_ID', 'NUMBER') NUMBER, p_('ORIGEN_AEROPUERTO_ID', 'NUMBER') NUMBER, p_('DESTINO_AEROPUERTO_ID', 'NUMBER') NUMBER, p_('FECHA_SALIDA', 'DATE') DATE, p_('FECHA_LLEGADA', 'DATE') DATE) IS
        BEGIN
            INSERT INTO vuelos (vuelo_id, aerolinea_id, origen_aeropuerto_id, destino_aeropuerto_id, fecha_salida, fecha_llegada)
            VALUES (p_vuelo_id, p_aerolinea_id, p_origen_aeropuerto_id, p_destino_aeropuerto_id, p_fecha_salida, p_fecha_llegada);
            COMMIT;
        END sp_create_vuelos;
        

        CREATE OR REPLACE PROCEDURE sp_read_vuelos (p_id IN NUMBER, result OUT SYS_REFCURSOR) IS
        BEGIN
            OPEN result FOR
            SELECT vuelo_id, aerolinea_id, origen_aeropuerto_id, destino_aeropuerto_id, fecha_salida, fecha_llegada
            FROM vuelos
            WHERE vuelo_id = p_id;
        END sp_read_vuelos;
        

        CREATE OR REPLACE PROCEDURE sp_update_vuelos (p_('VUELO_ID', 'NUMBER') NUMBER, p_('AEROLINEA_ID', 'NUMBER') NUMBER, p_('ORIGEN_AEROPUERTO_ID', 'NUMBER') NUMBER, p_('DESTINO_AEROPUERTO_ID', 'NUMBER') NUMBER, p_('FECHA_SALIDA', 'DATE') DATE, p_('FECHA_LLEGADA', 'DATE') DATE) IS
        BEGIN
            UPDATE vuelos
            SET aerolinea_id = p_aerolinea_id, origen_aeropuerto_id = p_origen_aeropuerto_id, destino_aeropuerto_id = p_destino_aeropuerto_id, fecha_salida = p_fecha_salida, fecha_llegada = p_fecha_llegada
            WHERE vuelo_id = p_vuelo_id;
            COMMIT;
        END sp_update_vuelos;
        

        CREATE OR REPLACE PROCEDURE sp_delete_vuelos (p_id IN NUMBER) IS
        BEGIN
            DELETE FROM vuelos
            WHERE vuelo_id = p_id;
            COMMIT;
        END sp_delete_vuelos;
        