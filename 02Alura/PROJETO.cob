       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROJETO.
      ********************************************
      * OBJETIVO: SISTEMA DE GESTÃO DE CLIENTES
      * AUTHOR  : JORGE
      ********************************************
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WRK-OPCAO     PIC X(1).
           77 WRK-TECLA     PIC X(1).
           77 WRK-MODULO    PIC X(25).

           77 WRK-OPCAO-REL PIC X(1).
           
       
       SCREEN SECTION.
           01 TELA.
               05 LIMPA-TELA.
                   10 BLANK SCREEN.
                   10 LINE 01 COLUMN 01 ERASE EOL
                      BACKGROUND-COLOR 5.
                   10 LINE 01 COLUMN 28 PIC X(25)
                      BACKGROUND-COLOR 5
                      FROM '~ SISTEMA DE CLIENTES ~'.
                   10 LINE 02 COLUMN 01 ERASE EOL
                      BACKGROUND-COLOR 2. 
                   10 LINE 02 COLUMN 36 PIC X(25) ERASE EOL
                      BACKGROUND-COLOR 2 FROM WRK-MODULO.
            
           01 MENU-PRINCIPAL.
               05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
               05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
               05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
               05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
               05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
               05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
               05 LINE 07 COLUMN 12 USING WRK-OPCAO.

           01 MENU-RELATORIO.
               05 LINE 07 COLUMN 15 VALUE '1 - EM TELA'.
               05 LINE 08 COLUMN 15 VALUE '2 - EM DISCO'.

               05 LINE 07 COLUMN 12 USING WRK-OPCAO-REL.

       PROCEDURE DIVISION.

       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.

           STOP RUN.

           
       1000-INICIAR.
           DISPLAY TELA.
           ACCEPT MENU-PRINCIPAL.

       2000-PROCESSAR.
           EVALUATE WRK-OPCAO
           WHEN 1
               PERFORM 5000-INCLUIR
           WHEN 2
               CONTINUE
           WHEN 3
           CONTINUE
           WHEN 4
           CONTINUE
           WHEN 5
               MOVE 'RELATORIO' TO WRK-MODULO
               DISPLAY TELA
               ACCEPT MENU-RELATORIO

           WHEN OTHER 
               IF WRK-OPCAO NOT EQUAL 'X'
                   DISPLAY 'OPCAO INVALIDA'
               END-IF
           END-EVALUATE.


       3000-FINALIZAR.


       5000-INCLUIR.
           MOVE 'INCLUIR' TO WRK-MODULO.
           DISPLAY TELA.
           ACCEPT WRK-TECLA AT 0712.
           
