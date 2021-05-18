       IDENTIFICATION DIVISION.
       PROGRAM-ID. USUARIO.

       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               77 WRK-USUARIO  PIC X(20) VALUE SPACES.
               77 WRK-NIVEL    PIC 9(02) VALUE ZEROS.
                   88 ADM  VALUE 01.
                   88 USER VALUE 02.

       PROCEDURE DIVISION.
           DISPLAY 'USUARIO.. '.
           ACCEPT WRK-USUARIO FROM CONSOLE.
           DISPLAY 'NIVEL.... '.
           ACCEPT WRK-NIVEL   FROM CONSOLE.
          
           IF ADM 
               DISPLAY 'ADM'
               ELSE IF USER
                   DISPLAY 'USER'
               ELSE 
                   DISPLAY 'LIXO'
           END-IF.
           STOP RUN.
