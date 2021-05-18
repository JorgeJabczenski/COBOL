       IDENTIFICATION DIVISION.
       PROGRAM-ID. OP-ARITM.
      ************************
      * AUTHOR   = JORGE
      * OBJETIVO = USO DE SINAL
      * DATA     = 14/05/2021
      ************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               77 WRK-NUM1    PIC  9(02) VALUE ZEROS.
               77 WRK-NUM2    PIC  9(02) VALUE ZEROS.
               77 WRK-NUM3    PIC S9(03) VALUE ZEROS.
               77 WRK-NUM3-ED PIC -ZZ9   VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '=================='.
           DISPLAY 'NUM1: ' WRK-NUM1 ' | NUM2: ' WRK-NUM2.
      ****************************************************
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-NUM3.
           DISPLAY 'SUBTRACT: ' WRK-NUM3.

           MOVE WRK-NUM3 TO WRK-NUM3-ED.
           DISPLAY 'MASK    : ' WRK-NUM3-ED.
      ****************************************************
           STOP RUN.
