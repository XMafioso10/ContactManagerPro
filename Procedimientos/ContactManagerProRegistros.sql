-- Tabla Usuarios (8 registros)
INSERT INTO usuarios (nombre, correo, contraseña) 
VALUES 
('Juan Pérez', 'juan.perez@example.com', '1234pass'),
('Ana Gómez', 'ana.gomez@example.com', '5678pass'),
('Carlos Ruiz', 'carlos.ruiz@example.com', 'abcdpass'),
('Luisa Fernández', 'luisa.fernandez@example.com', 'efghpass'),
('Marta López', 'marta.lopez@example.com', 'ijklpass'),
('Roberto Díaz', 'roberto.diaz@example.com', 'mnoqpass'),
('Sofía Castillo', 'sofia.castillo@example.com', 'rstu5678'),
('David Herrera', 'david.herrera@example.com', 'vwxyabcd');

select * from etiquetas;
-- Tabla Contactos (20 registros)
INSERT INTO contactos (id_usuario, nombre_contacto, apellidos_contacto) 
VALUES 
(9, 'Pedro', 'Hernández'),
(13, 'Laura', 'Ramírez'),
(9, 'Mario', 'Martínez'),
(9, 'Sofía', 'Reyes'),
(10, 'Diego', 'López'),
(9, 'Lucía', 'García'),
(10, 'Sara', 'Sánchez'),
(11, 'David', 'Mendoza'),
(12, 'Pablo', 'Moreno'),
(12, 'Andrea', 'Castro'),
(11, 'Fernando', 'Pérez'),
(10, 'Mariana', 'Silva'),
(9, 'Jorge', 'González'),
(16, 'Carmen', 'Ortiz'),
(15, 'Ricardo', 'Álvarez'),
(14, 'Paula', 'Santos'),
(13, 'Emilio', 'Gutiérrez'),
(13, 'Patricia', 'Benítez'),
(12, 'Carlos', 'Vega'),
(15, 'Julia', 'Fernández');

-- Tabla Números de Teléfono (20 registros)
INSERT INTO numeros_telefono (id_contacto, numero, tipo) 
VALUES 
(41, '555-1212', 'personal'),
(42, '555-2323', 'trabajo'),
(43, '555-3434', 'personal'),
(44, '555-4545', 'otros'),
(45, '555-5656', 'trabajo'),
(46, '555-6767', 'personal'),
(47, '555-7878', 'trabajo'),
(48, '555-8989', 'personal'),
(49, '555-9090', 'trabajo'),
(50, '555-0101', 'otros'),
(51, '555-1213', 'personal'),
(52, '555-2324', 'trabajo'),
(53, '555-3435', 'personal'),
(54, '555-4546', 'otros'),
(55, '555-5657', 'trabajo'),
(56, '555-6768', 'personal'),
(57, '555-7879', 'trabajo'),
(58, '555-8990', 'personal'),
(59, '555-9001', 'trabajo'),
(60, '555-0111', 'personal');

-- Tabla Correos Electrónicos (20 registros)
INSERT INTO correos_electronicos (id_contacto, correo, tipo) 
VALUES 
(41, 'contacto12@example.com', 'personal'),
(42, 'contacto13@empresa.com', 'trabajo'),
(43, 'contacto14@example.com', 'personal'),
(44, 'contacto15@empresa.com', 'trabajo'),
(45, 'contacto16@example.com', 'personal'),
(46, 'contacto17@empresa.com', 'trabajo'),
(47, 'contacto18@example.com', 'personal'),
(48, 'contacto19@empresa.com', 'trabajo'),
(49, 'contacto20@example.com', 'personal'),
(50, 'contacto21@empresa.com', 'trabajo'),
(51, 'contacto22@example.com', 'personal'),
(52, 'contacto23@empresa.com', 'trabajo'),
(53, 'contacto24@example.com', 'personal'),
(54, 'contacto25@empresa.com', 'trabajo'),
(55, 'contacto26@example.com', 'personal'),
(56, 'contacto27@empresa.com', 'trabajo'),
(57, 'contacto28@example.com', 'personal'),
(58, 'contacto29@empresa.com', 'trabajo'),
(59, 'contacto30@example.com', 'personal'),
(60, 'contacto31@empresa.com', 'trabajo');

-- Tabla Grupos (6 registros)
INSERT INTO grupos (id_usuario, nombre_grupo) 
VALUES 
(12, 'Familia'),
(13, 'Amigos'),
(14, 'Trabajo'),
(15, 'Estudios'),
(16, 'Red de Contactos'),
(12, 'Deportes');

-- Tabla Direcciones (20 registros)
INSERT INTO direcciones (id_contacto, direccion, ciudad, codigo_postal, pais) 
VALUES 
(41, 'Av. Libertad 101', 'Ciudad A', '12345', 'México'),
(42, 'Calle del Sol 202', 'Ciudad B', '54321', 'México'),
(43, 'Calle de la Paz 303', 'Ciudad C', '67890', 'México'),
(44, 'Av. Reforma 404', 'Ciudad D', '98765', 'México'),
(45, 'Calle 5 de Febrero 505', 'Ciudad E', '11223', 'México'),
(46, 'Boulevard de la Independencia 606', 'Ciudad F', '44556', 'México'),
(47, 'Plaza de Armas 707', 'Ciudad G', '77889', 'México'),
(48, 'Calle de los Héroes 808', 'Ciudad H', '99001', 'México'),
(49, 'Calle 16 de Septiembre 909', 'Ciudad I', '22334', 'México'),
(50, 'Av. 20 de Noviembre 1010', 'Ciudad J', '55667', 'México'),
(51, 'Calle de los Ángeles 1111', 'Ciudad K', '33445', 'México'),
(52, 'Av. de la Revolución 1212', 'Ciudad L', '77890', 'México'),
(53, 'Calle de la Amistad 1313', 'Ciudad M', '12312', 'México'),
(54, 'Boulevard de los Sueños 1414', 'Ciudad N', '56565', 'México'),
(55, 'Plaza de la Libertad 1515', 'Ciudad O', '78787', 'México'),
(56, 'Calle de la Esperanza 1616', 'Ciudad P', '23232', 'México'),
(57, 'Av. de los Derechos Humanos 1717', 'Ciudad Q', '88888', 'México'),
(58, 'Calle de los Abetos 1818', 'Ciudad R', '44444', 'México'),
(59, 'Calle de la Alegría 1919', 'Ciudad S', '55555', 'México'),
(60, 'Calle de la Esperanza 2020', 'Ciudad T', '99999', 'México');

-- Tabla Etiquetas (6 registros)
INSERT INTO etiquetas (nombre_etiqueta) 
VALUES 
('Urgente'),
('Revisión'),
('Citas importantes'),
('Negocios'),
('Personal'),
('Pendiente');

-- Tabla Contactos_Etiquetas (20 registros)
INSERT INTO contactos_etiquetas (id_contacto, id_etiqueta) 
VALUES 
(41, 3),
(42, 4),
(43, 6),
(44, 5),
(45, 2),
(46, 1),
(47, 3),
(48, 4),
(49, 5),
(50, 2),
(51, 1),
(52, 3),
(53, 4),
(54, 6),
(55, 5),
(56, 2),
(57, 1),
(58, 3),
(59, 4),
(60, 5),
(41, 6),
(42, 1),
(43, 2),
(44, 3),
(45, 4),
(46, 5),
(47, 6),
(48, 1),
(49, 2);

-- Tabla Notas (20 registros)
INSERT INTO notas (id_contacto, contenido) 
VALUES 
(41, 'Recoger documentos el lunes.'),
(42, 'Enviar resumen del proyecto.'),
(43, 'Confirmar asistencia a la reunión.'),
(44, 'Actualizar el estado del cliente.'),
(45, 'Enviar invitación a la fiesta.'),
(46, 'Revisar propuesta de colaboración.'),
(47, 'Preparar presentación para la próxima semana.'),
(48, 'Hacer seguimiento del pedido.'),
(49, 'Coordinar cita médica.'),
(50, 'Reunión de equipo el viernes.'),
(51, 'Enviar recordatorio de la factura.'),
(52, 'Programar llamada para el lunes.'),
(53, 'Verificar información de contacto.'),
(54, 'Revisar el contrato antes de firmar.'),
(55, 'Tomar nota sobre el feedback del cliente.'),
(56, 'Discutir nuevo proyecto en la próxima reunión.'),
(57, 'Actualizar datos de contacto.'),
(58, 'Confirmar fechas para el evento.'),
(59, 'Preparar material para el taller.'),
(60, 'Enviar agradecimientos después de la reunión.');

-- Tabla Historial de Interacciones (20 registros)
INSERT INTO historial_interacciones (id_contacto, fecha_interaccion, tipo_interaccion, notas) 
VALUES 
(41, '2024-09-01', 'llamada', 'Llamada para discutir el nuevo proyecto.'),
(42, '2024-09-02', 'mensaje', 'Mensaje enviado sobre la revisión del informe.'),
(43, '2024-09-03', 'reunión', 'Reunión presencial para evaluar el progreso.'),
(44, '2024-09-04', 'llamada', 'Llamada para confirmar detalles de la reunión.'),
(45, '2024-09-05', 'mensaje', 'Mensaje de texto recordando la fecha de entrega.'),
(46, '2024-09-06', 'reunión', 'Videoconferencia para discutir estrategias.'),
(47, '2024-09-07', 'llamada', 'Llamada para coordinar logística del evento.'),
(48, '2024-09-08', 'mensaje', 'Envío de mensaje con actualización de proyecto.'),
(49, '2024-09-09', 'reunión', 'Reunión de equipo para planificar el siguiente paso.'),
(50, '2024-09-10', 'llamada', 'Llamada para obtener feedback sobre el producto.'),
(51, '2024-09-11', 'mensaje', 'Envío de recordatorio sobre la presentación.'),
(52, '2024-09-12', 'reunión', 'Reunión virtual para evaluar el rendimiento del equipo.'),
(53, '2024-09-13', 'llamada', 'Llamada para hablar sobre el presupuesto.'),
(54, '2024-09-14', 'mensaje', 'Mensaje para confirmar asistencia al taller.'),
(55, '2024-09-15', 'reunión', 'Cita con el cliente para discutir detalles del proyecto.'),
(56, '2024-09-16', 'llamada', 'Llamada para aclarar dudas sobre el contrato.'),
(57, '2024-09-17', 'mensaje', 'Envío de informe de progreso.'),
(58, '2024-09-18', 'reunión', 'Reunión de seguimiento sobre la estrategia de marketing.'),
(59, '2024-09-19', 'llamada', 'Llamada de agradecimiento después del evento.'),
(60, '2024-09-20', 'mensaje', 'Mensaje sobre la próxima reunión de planificación.');
