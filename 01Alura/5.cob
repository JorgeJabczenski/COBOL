       IDENTIFICATION DIVISION.
       PROGRAM-ID. OP-ARITM.
      ************************
      * AUTHOR   = JORGE
      * OBJETIVO = FAZER OPERACOES ARITM
      * DATA     = 14/05/2021
      ************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               77 WRK-NUM1 PIC 9(02) VALUE ZEROS.
               77 WRK-NUM2 PIC 9(02) VALUE ZEROS.
               77 WRK-NUM3 PIC 9(03) VALUE ZEROS.
               77 WRK-NUM4 PIC 9(03) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '=================='.
           DISPLAY 'NUM1: ' WRK-NUM1 ' | NUM2: ' WRK-NUM2.
      ****************************************************
           ADD WRK-NUM1 WRK-NUM2 TO WRK-NUM3.
           DISPLAY 'ADD:      ' WRK-NUM3.
      ****************************************************
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-NUM3.
           DISPLAY 'SUBTRACT: ' WRK-NUM3.
      ****************************************************
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-NUM3
               REMAINDER WRK-NUM4
           DISPLAY 'DIVIDE:   ' WRK-NUM3.
           DISPLAY 'RESTO :   ' WRK-NUM4.
      ****************************************************
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-NUM3.
           DISPLAY 'MULTIPLY: ' WRK-NUM3.
      ****************************************************
           COMPUTE WRK-NUM3 = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY 'MEDIA:    ' WRK-NUM3.
      ****************************************************
           STOP RUN.
