       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVALUATE.

       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               77 WRK-PRODUTO  PIC X(20)    VALUE SPACES.
               77 WRK-UF       PIC X(02)    VALUE SPACES.
               77 WRK-VALOR    PIC 9(06)V99 VALUE ZEROS.
               77 WRK-FRETE    PIC 9(04)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO.. '.
           ACCEPT WRK-PRODUTO FROM CONSOLE.
           DISPLAY 'VALOR ... '.
           ACCEPT WRK-VALOR   FROM CONSOLE.
           DISPLAY 'ESTADO .. '.
           ACCEPT WRK-UF      FROM CONSOLE.

           EVALUATE WRK-UF
               WHEN 'PR'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0.05
               WHEN 'SC'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0.10
               WHEN 'RS'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0.50
               WHEN OTHER 
                   DISPLAY 'NAO PODEMOS ENTREGAR'
           END-EVALUATE.

           IF WRK-FRETE NOT EQUAL 0
               COMPUTE WRK-VALOR = WRK-VALOR + WRK-FRETE
               DISPLAY 'VALOR FRETE.. ' WRK-FRETE
               DISPLAY 'VALOR TOTAL.. ' WRK-VALOR
           END-IF.
           
           STOP RUN.
