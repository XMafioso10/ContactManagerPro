// Seleccionar la base de datos
use("ContactManagerPRO")

// Crear la colección de usuarios con validaciones
//creada por Alexis Chavez Mendoza


db.createCollection("usuarios", {
    validator: {
        $jsonSchema: {
            bsonType: 'object',
            title: 'Validación del objeto Usuarios',
            required: ['nombre', 'correo', 'contraseña'],
            properties: {
                nombre: {
                    bsonType: 'string',
                    description: 'Nombre completo del usuario',
                    minLength: 1,
                    maxLength: 100
                },
                correo: {
                    bsonType: 'string',
                    description: 'Correo electrónico del usuario',
                    pattern: "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
                },
                contraseña: {
                    bsonType: 'string',
                    description: 'Contraseña de usuario en formato hash',
                    minLength: 8,
                    maxLength: 255
                },
                rol: {
                    enum: ['Admin', 'Employee', 'Customer', 'Guest'],
                    description: 'Rol del usuario en la plataforma'
                },
                fecha_creacion: {
                    bsonType: 'date',
                    description: 'Fecha de creación del usuario'
                },
                edad: {
                    bsonType: 'int',
                    minimum: 18,
                    maximum: 60,
                    description: 'Edad del usuario entre 18 y 60 años'
                },
                estado: {
                    bsonType: 'bool',
                    description: 'Estado activo o inactivo del usuario'
                }
            }
        }
    }
});

// Crear la colección de contactos con la validación del esquema
//Creado por Leonardo Leon Moreno

db.createCollection("contactos", {
    validator: {
        $jsonSchema: {
            bsonType: 'object',
            title: 'Validación del objeto Contactos',
            required: ['id_usuario', 'nombre_contacto'],
            properties: {
                id_usuario: {
                    bsonType: 'objectId', // Referencia a un _id de la colección usuarios
                    description: 'Identificador del usuario asociado al contacto'
                },
                nombre_contacto: {
                    bsonType: 'string',
                    description: 'Nombre del contacto',
                    maxLength: 100
                },
                apellidos_contacto: {
                    bsonType: 'string',
                    description: 'Apellidos del contacto',
                    maxLength: 100
                },
                fecha_creacion: {
                    bsonType: 'date',
                    description: 'Fecha de creación del contacto',
                    default: () => new Date() // Usar la fecha actual por defecto
                }
            }
        }
    }
});

// Crear un índice en la colección contactos para mejorar la eficiencia de las búsquedas por id_usuario
db.contactos.createIndex(
    { id_usuario: 1 }, // Indexar por id_usuario
    { unique: false }  // Permitir valores duplicados ya que un usuario puede tener varios contactos
);