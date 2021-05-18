       IDENTIFICATION DIVISION.
       PROGRAM-ID. IF-ELSE.
       
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'BOOK.cob.'.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           
           PERFORM 0100-INICIALIZAR.
           IF WRK-VENDAS > 0
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
           END-IF.
           PERFORM 0300-FINALIZAR.
           
           STOP RUN.

       0100-INICIALIZAR.
           ACCEPT WRK-VENDAS FROM CONSOLE.

       0200-PROCESSAR.
           ADD 1 TO WRK-QT.
           ADD WRK-VENDAS TO WRK-TOTAL.
           pERFORM 0100-INICIALIZAR.

       0300-FINALIZAR.
           DISPLAY '----------'.
           DISPLAY 'TOTAL: ' WRK-TOTAL.
           