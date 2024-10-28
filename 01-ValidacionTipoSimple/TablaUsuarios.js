//Alexis Chavez Mendoza
//verifican tipos de datos, longitudes y patrones básicos

// Crear la colección de usuarios con validaciones
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