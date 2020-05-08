       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB04.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: RECEBER NOME E SALARIO E IMPRIMIR FORMATADO
      * UTILIZAR VARIAVEIS NIVEL 01.02... (ESTRUTURADA)
      * DATA = XX/XX/XXXX
      ******************************************************************
       ENVIRONMENT                     DIVISION.
       CONFIGURATION                   SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE                 SECTION.
      *
       77 WRK-NOME                     PIC X(020)      VALUE SPACES.
       77 WRK-SALARIO                  PIC 9(006)V99   VALUE ZEROS.
       77 WRK-SALARIO-ED               PIC $ZZZ.ZZ9,99 VALUE ZEROS.
      *
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME             FROM CONSOLE.
           ACCEPT WRK-SALARIO          FROM CONSOLE.
      *********************** MOSTRA DADOS
           DISPLAY 'NOME: '            WRK-NOME.
           MOVE WRK-SALARIO            TO WRK-SALARIO-ED.
           DISPLAY 'SALARIO: '         WRK-SALARIO-ED.
           STOP RUN.
