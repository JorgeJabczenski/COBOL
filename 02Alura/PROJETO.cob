       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROJETO.
      ********************************************
      * OBJETIVO: SISTEMA DE GESTÃO DE CLIENTES
      * AUTHOR  : JORGE
      ********************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO 'CLIENTES.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               FILE STATUS IS CLIENTES-STATUS
               RECORD KEY CLIENTES-CHAVE.
       
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
           05 CLIENTES-CHAVE.
               10 CLIENTES-FONE PIC 9(09).
           05 CLIENTES-NOME     PIC X(30).
           05 CLIENTES-EMAIL    PIC X(40).

       WORKING-STORAGE SECTION.
           77 WRK-OPCAO     PIC X(01).
           77 WRK-TECLA     PIC X(01).
           77 WRK-MODULO    PIC X(25).
           77 WRK-MSGERRO   PIC X(40).
           77 WRK-OPCAO-REL PIC X(01).

           77 CLIENTES-STATUS PIC 9(02).

           
       
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
           
           01 MOSTRA-ERRO.
               02 MSG-ERRO.
                   10 LINE 16 COLUMN 10 PIC X(40) FROM WRK-MSGERRO.
                   10 COLUMN PLUS 2 PIC X(01) USING WRK-TECLA.

            
           01 MENU-PRINCIPAL.
               05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
               05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
               05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
               05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
               05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
               05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
               05 LINE 07 COLUMN 12 USING WRK-OPCAO.
           
           01 TELA-REGISTRO.
               05 CHAVE FOREGROUND-COLOR 2.
                   10 LINE 10 COLUMN 10 VALUE 'TELEFONE: '.
                   10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                       BLANK WHEN ZEROS.
               05 SS-DADOS.
                   10 LINE 11 COLUMN 10 VALUE 'NOME:     '.
                   10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
                   10 LINE 12 COLUMN 10 VALUE 'EMAIL:    '.
                   10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-NOME.

           01 MENU-RELATORIO.
               05 LINE 07 COLUMN 15 VALUE '1 - EM TELA'.
               05 LINE 08 COLUMN 15 VALUE '2 - EM DISCO'.
               05 LINE 07 COLUMN 12 USING WRK-OPCAO-REL.

       PROCEDURE DIVISION.

       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR THRU 1100-MONTATELA.
           PERFORM 2000-PROCESSAR UNTIL WRK-OPCAO = 'X'.
           PERFORM 3000-FINALIZAR.

           STOP RUN.

           
       1000-INICIAR.
           OPEN I-O CLIENTES
               IF CLIENTES-STATUS = 35 THEN 
                   OPEN OUTPUT CLIENTES
                   CLOSE CLIENTES 
                   OPEN I-O CLIENTES
               END-IF.

       1100-MONTATELA.
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
           PERFORM 1100-MONTATELA.


       3000-FINALIZAR.
           CLOSE CLIENTES.

       5000-INCLUIR.
           MOVE 'INCLUIR' TO WRK-MODULO.
           DISPLAY TELA.
               ACCEPT TELA-REGISTRO.
                   WRITE CLIENTES-REG.
                       IF CLIENTES-STATUS = 22
                           MOVE 'REGISTRO JA EXISTE' TO WRK-MSGERRO
                           ACCEPT MOSTRA-ERRO
                       END-IF.
               

           
