-- tabla de usuarios
CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,  -- Usamos SERIAL para autoincrementar
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    contraseña VARCHAR(255) NOT NULL
);

-- tabla de contactos
CREATE TABLE contactos (
    id_contacto SERIAL PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    nombre_contacto VARCHAR(100) NOT NULL,
    apellidos_contacto VARCHAR(100),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Fecha y hora actual
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-- tabla de números de teléfono
CREATE TABLE numeros_telefono (
    id_numero SERIAL PRIMARY KEY,
    id_contacto INTEGER NOT NULL,
    numero VARCHAR(15) NOT NULL,
    tipo VARCHAR(10) CHECK (tipo IN ('personal', 'trabajo', 'otros')) NOT NULL,
    FOREIGN KEY (id_contacto) REFERENCES contactos(id_contacto)
);

-- tabla de correos electrónicos
CREATE TABLE correos_electronicos (
    id_correo SERIAL PRIMARY KEY,
    id_contacto INTEGER NOT NULL,
    correo VARCHAR(100) NOT NULL,
    tipo VARCHAR(10) CHECK (tipo IN ('personal', 'trabajo', 'otros')) NOT NULL,
    FOREIGN KEY (id_contacto) REFERENCES contactos(id_contacto)
);

-- tabla de grupos
CREATE TABLE grupos (
    id_grupo SERIAL PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    nombre_grupo VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-- tabla de direcciones
CREATE TABLE direcciones (
    id_direccion SERIAL PRIMARY KEY,
    id_contacto INTEGER NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    ciudad VARCHAR(100),
    codigo_postal VARCHAR(10),
    pais VARCHAR(100),
    FOREIGN KEY (id_contacto) REFERENCES contactos(id_contacto)
);

-- tabla de etiquetas
CREATE TABLE etiquetas (
    id_etiqueta SERIAL PRIMARY KEY,
    nombre_etiqueta VARCHAR(50) UNIQUE NOT NULL
);

-- tabla de contactos_etiquetas
CREATE TABLE contactos_etiquetas (
    id_contacto INTEGER NOT NULL,
    id_etiqueta INTEGER NOT NULL,
    PRIMARY KEY (id_contacto, id_etiqueta),
    FOREIGN KEY (id_contacto) REFERENCES contactos(id_contacto),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas(id_etiqueta)
);

-- tabla de notas
CREATE TABLE notas (
    id_nota SERIAL PRIMARY KEY,
    id_contacto INTEGER NOT NULL,
    contenido TEXT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_contacto) REFERENCES contactos(id_contacto)
);

-- tabla de historial de interacciones
CREATE TABLE historial_interacciones (
    id_interaccion SERIAL PRIMARY KEY,
    id_contacto INTEGER NOT NULL,
    fecha_interaccion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    tipo_interaccion VARCHAR(10) CHECK (tipo_interaccion IN ('llamada', 'mensaje', 'reunión', 'otro')) NOT NULL,
    notas TEXT,
    FOREIGN KEY (id_contacto) REFERENCES contactos(id_contacto)
);