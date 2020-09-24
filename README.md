# Backend "Delilah Resto", App de pedidos de comida

Trabajo Nro 3 del curso de Desarrollo Web Full Stack de Acámica.

## Recursos y tecnologías utilizadas

- Node.js
- Express
- JWT para autenticación via Token
- MySQL
- Sequelize
- Postman para manejo de endpoints y testing
- Swagger para documentación de API

El objetivo del trabajo es generar el backend de una app de pedidos de comida llamada Delilah Resto, generando la arquitectura, bases de datos relacionales, endpoints funcionales y documentación.


# Documentacion
https://app.swaggerhub.com/apis-docs/gonzalo-cano/delilah-resto/1.0.1


## Instalación e inicializacion del proyecto

### 1 - Clonar proyecto

Clonar el repositorio desde el [siguiente link](https://github.com/goemca/delilah-resto.git).

Desde la consola con el siguiente link:

`git clone https://github.com/goemca/delilah-resto.git`

### 2 - Instalación del entorno y dependencias

$npm install

$npm i 
- body-parser 
- cors
- csv-parser 
- express 
- jsonwebtoken 
- mysql2 
- sequelize
- fs
- get-stream

(eje: $npm i body-parser)

### 3 - Setup de la DB

#### A - Config Auto:

 - Abrir el el archivo `config.js` path (`db/sequelize/config.js`) y modificar los campos (segun su DB):
     1. Database's host y puerto de la base de datos al que debe conectarse la API
     2. Database's nombre.
     3. Database's user y password para conectar.

 - Inicialice un servidor MySQL.

 - Cree la base de datos desde MySQL usando la línea de comando de la siguiente manera:
     $ cd db/db-setup
     $ node index.js

Esto creará el esquema de la base de datos, las tablas e importará datos de ejemplo de usuarios y productos. 
(Para un testeo mas agil, solo quedarian cargar las ordenes(pedidos) y probar)

La información con ejemplos se encuentro el bulk de archivos `products.csv` y ` users.csv` en `db / datasets`

#### B - Config Manual:

Si la configuración automática falla, puede hacerlo de la siguiente forma manual:

- Abrir el el archivo `config.js` path (`db/sequelize/config.js`) y modificar los campos (segun su DB):
     1. Database's host y puerto de la base de datos al que debe conectarse la API
     2. Database's nombre.
     3. Database's user y password para conectar.

- Inicialice el servidor MySQL.
- Cree la base de datos llamada ** delilah_resto ** desde la línea de comandos o la utilidad de escritorio en su MySQL
- Utilize el script de queries `dbScript.sql` ubicado en el path db/dbScript.sql. Para crear el esquema y las tablas, e inserte los datos manualmente.

### 4 Run de la API

-Ejecturar las siguientes lineas.
    $ cd server
    $ node index.js








