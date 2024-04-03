# mainframe

Repositorio para el Desarrollo en Mainframe.

## Primer programa

El primer programa es el típico 'Hello world' con el código mínimo necesario además del job para ejecutarlo.

- CBL\APPB001.cbl
- JCL\JCLB001.jcl

## Formato estándar de un programa

Cobol es un lenguaje de programación estructurado y requiere de una estructura especifica de lo contrario el compilador no podrá hacer su trabajo. El siguiente contiene el formato que se debe seguir al programar en Cobol.

- CBL\APPB002.cbl

## Las divisiones de un programa Cobol

Un programa Cobol tiene 4 divisiones, estas divisiones organizan el contenido del programa separando la identificación del programa, el entorno externo, los datos a utilizar y el funcionamiento en sí. Adicionalmente cada división, a excepción de la división de identificaión, contiene secciones, las cuales agrupan las declaraciones, y sentencias del programa. Las divisiones son las siguientes:

1. IDENTIFICATION DIVISION: los datos mas importantes y que no deben faltar son el nombre del programa y el autor, opcionalmente se puede incluir información acerca de las fechas de codificación y compilación.
2. ENVIRONMENT DIVISION: contiene los detalles del entorno externo del programa, aquí se indican principalmente los ficheros que utiliza el programa así como el tipo de acceso que se realizará sobre el mismo.
3. DATA DIVISION: aquí se definen todas las variables que se utilizarán en el programa y sus tipos de datos y en caso el programa tenga definidos ficheros en el ENVIRONMENT DIVISION tambien se debe definir la estructura del mismo. Opcionalmente, se define también los parametros de entrada y salida del programa.
4. PROCEDURE DIVISION: es donde se codifica la lógica del programa.

En el siguiente ejemplo puedes ver todas las divisiones y secciones en uso en un programa.

- CBL\APPB003.cbl
