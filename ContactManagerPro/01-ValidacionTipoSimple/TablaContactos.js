//leonardo moreno leon
//verifican tipos de datos, longitudes y patrones básicos

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
