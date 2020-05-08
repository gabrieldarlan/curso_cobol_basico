       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: USO DO SINAL
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
       77  WRK-NUM1                    PIC 9(02)   VALUE ZEROS.
       77  WRK-NUM2                    PIC 9(02)   VALUE ZEROS.
       77  WRK-RESUL                   PIC S9(04)  VALUE ZEROS.
       77  WRK-RESUL-ED                PIC -ZZ9  VALUE ZEROS.
       PROCEDURE DIVISION.

           ACCEPT WRK-NUM1             FROM CONSOLE.
           ACCEPT WRK-NUM2             FROM CONSOLE.
           DISPLAY 'NUMERO 1: '        WRK-NUM1.
           DISPLAY 'NUMERO 2: '        WRK-NUM2.
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
           MOVE WRK-RESUL              TO WRK-RESUL-ED.
           DISPLAY 'RESULTADO: '       WRK-RESUL-ED.
           PERFORM 3000-FINALIZAR.
      *================================================================*
       3000-FINALIZAR                  SECTION.
      *================================================================*
           STOP RUN.
      *================================================================*
       3000-99-FIM.                    EXIT.
      *================================================================*
