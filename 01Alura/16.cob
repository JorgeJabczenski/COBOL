       IDENTIFICATION DIVISION.
       PROGRAM-ID. MES.
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      
           01 WRK-DATA.
               02 WRK-ANO PIC 9(04) VALUE ZEROS.
               02 WRK-MES PIC 9(02) VALUE ZEROS.
               02 WRK-DIA PIC 9(02) VALUE ZEROS.

           01 WRK-MESES.
               03 WRK-M PIC X(09) OCCURS 12 TIMES.

       PROCEDURE DIVISION.
           
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.

           STOP RUN.

           0100-INICIALIZAR.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           
           0200-PROCESSAR.
               PERFORM 0400-MONTAMES.
               DISPLAY WRK-M(WRK-MES).

           0300-FINALIZAR.
               DISPLAY '----------'.
               DISPLAY 'FINALIZADO'.

           0400-MONTAMES.
               MOVE 'JANEIRO'   TO WRK-M(01).
               MOVE 'FEVEREIRO' TO WRK-M(02).
               MOVE 'MARÇO'     TO WRK-M(03).
               MOVE 'ABRIL'     TO WRK-M(04).
               MOVE 'MAIO'      TO WRK-M(05).
               MOVE 'JUNHO'     TO WRK-M(06).
               MOVE 'JULHO'     TO WRK-M(07).
               MOVE 'AGOSTO'    TO WRK-M(08).
               MOVE 'SETEMBRO'  TO WRK-M(09).
               MOVE 'OUTUBRO'   TO WRK-M(10).
               MOVE 'NOVEMBRO'  TO WRK-M(11).
               MOVE 'DEZEMBRO'  TO WRK-M(12).
