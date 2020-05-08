       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      *****************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: MOSTRAR
      * DATA = XX/XX/XXXX
      *****************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *NIVEL 77 DEFINE QUE A VARIAVEL É UNICA, LOCAL E PUBLICA
       77 WRK-NOME                     PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'NOME: ' WRK-NOME(1:8).
           STOP RUN.
