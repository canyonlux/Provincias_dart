
Aplicación de Consola: Información de Provincias y Comarcas del País Valencià

Esta aplicación de consola, desarrollada en Dart, permite al usuario obtener información detallada sobre las provincias y comarcas del País Valencià, utilizando un API REST para las consultas.
Características

    Listado de Comarcas: Obtén un listado de comarcas para una provincia específica.
    Información Detallada de Comarcas: Accede a información detallada de una comarca en particular.

Uso

La aplicación se utiliza desde la línea de comandos y admite dos subórdenes principales:

    comarcas: Para obtener un listado de comarcas de una provincia.
    infocomarca: Para obtener información detallada sobre una comarca específica.

Ejemplos de Comandos

    Listar comarcas de Alacant:

    dart run main.dart comarques Alacant


Obtener información de la comarca "La Ribera Baixa":

bash

    $ dart run main.dart infocomarca "La Ribera Baixa"

    Nota: Recuerda escapar los apóstrofos en los nombres de comarcas, por ejemplo: L\'alcoià.

API REST

Las consultas se realizan a las siguientes rutas del API:

    Comarcas de una provincia: https://node-comarques-rest-server-production.up.railway.app/api/comarques/$provincia
    Información de una comarca: https://node-comarques-rest-server-production.up.railway.app/api/comarques/infoComarca/$comarca

Clase Comarcas

La clase Comarcas se utiliza para almacenar y manejar la información obtenida del API. Incluye propiedades como nombre de la comarca, capital, población, imagen, descripción, latitud y longitud.

    Constructores:
        Constructor principal con argumentos nombrados.
        Constructor Comarca.fromJSON para inicializar a partir de un JSON.
    Método toString: Sobrescrito para mostrar la información de la comarca de manera formateada.

Errores y Excepciones

La aplicación maneja diversos tipos de errores, como órdenes desconocidas, número incorrecto de argumentos, o nombres de provincias/comarcas inválidos.
Ejemplos de Respuestas

    Consulta de comarcas de una provincia.
    Consulta de información de una comarca.
    Manejo de errores diversos.

Desarrollo y Contribuciones

Este proyecto está desarrollado en Dart. Las contribuciones son bienvenidas siguiendo los estándares habituales de pull request en GitHub.