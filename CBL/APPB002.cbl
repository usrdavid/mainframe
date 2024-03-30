      * FORMATO ESTANDAR DE UN PROGRAMA COBOL

      * Cobol es un lenguaje de programación estructurado por lo que
      * require de una estructura particular como la siguiente:

<-SEQ>*<-A><---------------------     B    ----------------------------><-NOTES>
      
      *      Columnas
      * SEQ    1-6     Este espacio se usaba para numerar la secuencia
      *                de un programa Cobol, las 3 primeras columas
      *                numeraban la página y las 3 siguientes numeraban
      *                las líneas de código. Actualmente este espacio
      *                es opcional.
      * *      7       Este espacio de un caracter es utilizado 
      *                comunmente para los comentarios con un (*)
      *                pero tambien puede ser usado para indicar que 
      *                continua de la linea anterior con un (-), mas
      *                abajo puedes ver un ejemplo.
      * A      8-11    Este espacio es conocido como Area A, es a partir
      *                de aquí que se escribe el código cobol, pero no 
      *                todo, sino las palabras reservadas para las 
      *                DIVISIONS, SECTIONS, Definiciones (FD/SD) y los
      *                nombres de párrafos.
      * B      12-72   Conocido como Area B y aquí es donde se escribe
      *                el resto del código cobol, como los párrafos,
      *                las condiciones, los displays, etc.
      * NOTES  73-80   Actualmente es usado para comentarios y este
      *                no es considerado por el compilador.
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  APPB001.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 WS-STRING PIC X(90) VALUE 'ESTA ES UNA VARIABLE DE TIPO STRING
      -    ' Y SI EL TEXTO ES MUY GRANDE SE PUEDE USAR EL (-)'.

       PROCEDURE DIVISION.
           DISPLAY 'HELLO WORLD!'
           STOP RUN.