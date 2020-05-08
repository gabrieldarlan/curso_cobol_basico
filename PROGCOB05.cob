       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: OPERADORES ARITMETICOS
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
       77  WRK-NUM1                    PIC 9(002)  VALUE ZEROS.
       77  WRK-NUM2                    PIC 9(002)  VALUE ZEROS.
       77  WRK-RESUL                   PIC 9(004)  VALUE ZEROS.
       77  WRK-RESTO                   PIC 9(002)  VALUE ZEROS.
       PROCEDURE DIVISION.

           ACCEPT WRK-NUM1             FROM CONSOLE.
           ACCEPT WRK-NUM2             FROM CONSOLE.
           DISPLAY 'NUMERO 1: '        WRK-NUM1.
           DISPLAY 'NUMERO 2: '        WRK-NUM2.
           DISPLAY '================SOMA========================='
           ADD WRK-NUM1 WRK-NUM2       TO WRK-RESUL.
           DISPLAY 'SOMA: ' WRK-RESUL.
           DISPLAY '================SOMA========================='
           DISPLAY '================SUBTRACAO===================='
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'SUBTRACAO: ' WRK-RESUL.
           DISPLAY '================SUBTRACAO====================='
           DISPLAY '================DIVIDE========================'
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL REMAINDER
           WRK-RESTO.
           DISPLAY 'DIVISAO: ' WRK-RESUL.
           DISPLAY 'RESTO: ' WRK-RESTO.
           DISPLAY '================DIVIDE========================'
           DISPLAY '================MULTIPLICACAO================='
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'MULTIPLICACAO: ' WRK-RESUL.
           DISPLAY '================MULTIPLICACAO================='
           DISPLAY '================COMPUTE================='
           COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY 'MEDIA: ' WRK-RESUL.
           DISPLAY '================COMPUTE================='









           PERFORM 3000-FINALIZAR.
      *================================================================*
       3000-FINALIZAR                  SECTION.
      *================================================================*
           STOP RUN.
      *================================================================*
       3000-99-FIM.                    EXIT.
      *================================================================*
