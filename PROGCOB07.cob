       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E IMPRIMIR
      * UTILIZAR COMANDOS IF/ELSE/END-IF
      * DATA = XX/XX/XXXX
      ******************************************************************
       ENVIRONMENT                     DIVISION.
       CONFIGURATION                   SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE                 SECTION.
      *================================================================*
       77 FILLER                       PIC X(050) VALUE
          'AREA PARA VARIAVIES AUXILIARES'.
      *================================================================*
      *
       77  WRK-NOTA1                    PIC 9(002)     VALUE ZEROS.
       77  WRK-NOTA2                    PIC 9(002)     VALUE ZEROS.
       77  WRK-MEDIA                    PIC 9(004)V9   VALUE ZEROS.
      *
       PROCEDURE DIVISION.

           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.

           COMPUTE WRK-MEDIA = (WRK-NOTA1+WRK-NOTA2) / 2.

           DISPLAY 'MEDIA..: ' WRK-MEDIA.

           IF  WRK-MEDIA               >= 6
               DISPLAY 'APROVADO'
           ELSE
               IF  WRK-MEDIA           >= 2
                   DISPLAY 'RECUPERACAO'
               ELSE
                   DISPLAY 'REPROVADO'
               END-IF
           END-IF.

           PERFORM 3000-FINALIZAR.
      *================================================================*
       3000-FINALIZAR                  SECTION.
      *================================================================*
           STOP RUN.
      *================================================================*
       3000-99-FIM.                    EXIT.
      *================================================================*
