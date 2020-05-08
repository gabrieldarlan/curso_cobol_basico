       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCPF.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: RECEBER CPF E FORMATAR
      * DATA = XX/XX/XXXX
      ******************************************************************
       ENVIRONMENT                     DIVISION.
       CONFIGURATION                   SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE                 SECTION.
       01  WRK-CPF                     PIC X(011)  VALUE ZEROS.
       01  WRK-CPF-ED                  PIC ZZZ.ZZZ.ZZ9/99.

       PROCEDURE DIVISION.
           ACCEPT WRK-CPF              FROM CONSOLE.
           MOVE WRK-CPF                TO WRK-CPF-ED.
           DISPLAY 'CPF: '             WRK-CPF-ED.
           STOP RUN.
