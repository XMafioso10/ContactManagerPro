
--Procedimiento 
CREATE OR REPLACE FUNCTION actualizar_contacto(
    p_contacto_id INT,
    p_nombre_contacto VARCHAR,
    p_apellidos_contacto VARCHAR,
    p_numeros_telefono JSON
)
RETURNS VOID AS $$
BEGIN
    UPDATE contactos
    SET nombre_contacto = p_nombre_contacto,
        apellidos_contacto = p_apellidos_contacto
    WHERE id_contacto = p_contacto_id;

    DELETE FROM numeros_telefono WHERE id_contacto = p_contacto_id;

    INSERT INTO numeros_telefono (id_contacto, numero, tipo)
    SELECT p_contacto_id, numero::TEXT, tipo::TEXT
    FROM json_to_recordset(p_numeros_telefono) AS t(numero TEXT, tipo TEXT);
END;
$$ LANGUAGE plpgsql;







--Transacción
BEGIN;

DO $$ 
BEGIN
    IF NOT EXISTS (SELECT 1 FROM contactos WHERE id_contacto = 41) THEN
        RAISE EXCEPTION 'El contacto no existe.';
    END IF;
END $$;

INSERT INTO historial_interacciones (id_contacto, fecha_interaccion, tipo_interaccion, notas)
VALUES (41, NOW(), 'mensaje', 'Envío de recordatorio para la reunión.');

COMMIT;