//Leonardo
//ya tiene validacion de expresiones en el correo y en el telefono

// Crear la colección de contactos con validación de documentos anidados

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
                    description: 'Fecha de creación del contacto'
                },
                
                // Validación de documento anidado: informacion_adicional
                informacion_adicional: {
                    bsonType: 'object', // Validación del campo 'informacion_adicional' como un documento anidado
                    description: 'Información adicional del contacto',
                    properties: {
                        telefono: {
                            bsonType: 'string',
                            description: 'Número de teléfono del contacto',
                            pattern: "^[0-9]{10}$" // Ejemplo de validación para un número de teléfono de 10 dígitos
                        },
                        email_contacto: {
                            bsonType: 'string',
                            description: 'Correo electrónico adicional del contacto',
                            pattern: "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
                        }
                    }
                }
            }
        }
    }
});