      **************************
       IDENTIFICATION DIVISION.
      **************************
       PROGRAM-ID. APPB003.
       AUTHOR. DAVID.
       INSTALLATION. BANK.
       DATE-WRITTEN. 2024-03-26.
       DATE-COMPILED. 2024-03-26.
       SECURITY. NORMAL.

      ***********************
       ENVIRONMENT DIVISION.
      ***********************

****** CONFIGURATION SECTION.
       SOURCE-COMPUTER. IBM3270.
       OBJECT-COMPUTER. IBM3270.
       SPECIAL-NAMES. DECIMAL-POINT IS COMMA.

****** INPUT-OUTPUT SECTION.
       FILE-CONTROL. 
      * Así es como relacionamos el fichero:
      *  FILEI es el nombre que usará el programa; y,
      *  FILEIN es el nombre en el JCL
      *  el resto corresponde a la definición del tipo de acceso
      *  y el File Status es el que controla el código de retorno en
      *  cada operación que hagamos con el fichero.
           SELECT FILEI ASSIGN TO FILEIN
           ORGANIZATION IS SEQUENTIAL 
           ACCESS MODE IS SEQUENTIAL 
           FILE STATUS IS FS-FILEI.

      ****************
       DATA DIVISION.
      ****************
****** FILE SECTION. 
      * Aquí es done definimos la estructura del fichero que indicamos
      * en el FILE-CONTROL.
       FD  FILEI
           RECORDING MODE IS F
           BLOCK CONTAINS 0 RECORDS 
           DATA RECORD IS REC-FILEI.
       01 REC-FILEI  PIC X(05).

****** WORKING-STORAGE SECTION. 
      * El File Status del fichero FILEI tambien debe declararse como
      *  una variale dentro del programa.
       01 FS-FILEI   PIC X(02).

****** LINKAGE SECTION. 
      * En esta sección definimos los parámetros de entrada y salida
       01 PARMS      PIC X(05).

      *********************************
       PROCEDURE DIVISION USING PARMS.
      *********************************

      * Todos los ficheros que se utilizan en el programa primero
      *  deben abrirse:
           OPEN INPUT FILEI
           
      * Una vez abierto ya podemos realizar la lectura al archivo, 
      *  cada READ realiza una lectura secuencial al archivo leyendo
      *  un registro completo.
           READ FILEI
           END-READ 
                      
           DISPLAY PARMS ' ' REC-FILEI

      * Al finalizar el programa debemos cerrar el fichero, esto es una
      *  una buena práctica, ya que al terminar el programa el fichero
      *  es cerrado automáticamente.
           CLOSE FILEI

           STOP RUN.