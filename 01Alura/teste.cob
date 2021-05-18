       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WRK-NOME PIC X(20) VALUE SPACES.
           01 WRK-DATA.
               02 WRK-ANO PIC 9(4) VALUE ZEROS.
               02 WRK-MES PIC 9(2) VALUE ZEROS.
               02 WRK-DIA PIC 9(2) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY 'DATA: ' WRK-DIA '/' WRK-MES '/' WRK-ANO
           DISPLAY "OLA " WRK-NOME(1:3)
           STOP RUN.