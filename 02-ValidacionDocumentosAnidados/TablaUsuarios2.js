//Alexis Chavez Mendoza
// se modifico para poder hacer una validacion de documentos anidados, 
//se agrego un campo direccion que contendrá subcampos como calle, ciudad, y codigo_postal
//direccion: Es un campo anidado que se valida como un documento con los subcampos calle, ciudad y codigo_postal.
// Cada subcampo tiene su propio tipo y restricciones, y todos son requeridos dentro de direccion.
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
                },
                
                // Validación de documento anidado: direccion
                direccion: {  
                    bsonType: 'object', // Validación del campo 'direccion' como un documento anidado
                    description: 'Dirección del usuario',
                    required: ['calle', 'ciudad', 'codigo_postal'], // Campos obligatorios en el documento anidado
                    properties: {
                        calle: {
                            bsonType: 'string',
                            description: 'Nombre de la calle de la dirección',
                            maxLength: 100
                        },
                        ciudad: {
                            bsonType: 'string',
                            description: 'Ciudad de la dirección',
                            maxLength: 50
                        },
                        codigo_postal: {
                            bsonType: 'string',
                            description: 'Código postal de la dirección',
                            pattern: "^[0-9]{5}$" // Ejemplo de validación de formato, aquí para un código postal de 5 dígitos
                        }
                    }
                }
            }
        }
    }
});
