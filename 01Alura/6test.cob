       IDENTIFICATION DIVISION.
       PROGRAM-ID. DESAFIO6.

       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
               SPECIAL-NAMES.
                   DECIMAL-POINT IS COMMA.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
               77 WRK-VENDA1   PIC 9(04)V99.
               77 WRK-VENDA2   PIC 9(04)V99.
               77 WRK-MEDIA    PIC 9(05)V99.
               77 WRK-MEDIA-ED PIC $ZZ.ZZZ,99.
       PROCEDURE DIVISION.
           ACCEPT WRK-VENDA1 FROM CONSOLE.
           ACCEPT WRK-VENDA2 FROM CONSOLE.

           DISPLAY WRK-VENDA1 ' | ' WRK-VENDA2.

           COMPUTE WRK-MEDIA = (WRK-VENDA1 + WRK-VENDA2) / 2.
           DISPLAY WRK-MEDIA.
           MOVE WRK-MEDIA TO WRK-MEDIA-ED.

           DISPLAY WRK-MEDIA-ED.

           STOP RUN.
