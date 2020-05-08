       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB13.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E IMPRIMIR
      * COM PARAGRAFO
      * DATA = XX/XX/XXXX
      ******************************************************************
       ENVIRONMENT                     DIVISION.
       CONFIGURATION                   SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE                 SECTION.
      *================================================================*
       77 FILLER                       PIC X(050)  VALUE
          'AREA PARA VARIAVIES AUXILIARES'.
      *================================================================*
      *
       77  WRK-NUMERO                  PIC 9(002)  VALUE ZEROS.
       77  WRK-CONTADOR                PIC 9(002)  VALUE 1.
       77  WRK-RESULT                  PIC 9(003)  VALUE ZEROS.
      *
       PROCEDURE DIVISION.
      *================================================================*
      *    AREA PRINCIPAL DO PROGRAMA
      *================================================================*
       0001-PRINCIPAL                  SECTION.
      *================================================================*
           PERFORM 0100-INICIALIZAR.
           IF  WRK-NUMERO              GREATER ZEROS
               PERFORM 0200-PROCESSAR
           END-IF.
           PERFORM 0300-FINALIZAR.
      *================================================================*
       0001-99-FIM.                    EXIT.
      *================================================================*

      *================================================================*
      *    INICIALIZAR A ENTRADA
      *================================================================*
       0100-INICIALIZAR                SECTION.
      *================================================================*
           DISPLAY 'INSIRA UM NUMERO'.
           ACCEPT WRK-NUMERO.
      *================================================================*
       0100-99-FIM.                    EXIT.
      *================================================================*

      *================================================================*
      *    PROCESSAMENTO PRINCIPAL DO PROGRAMA
      *================================================================*
       0200-PROCESSAR                  SECTION.
      *================================================================*
           DISPLAY 'TABUADA'.
           PERFORM 10 TIMES
               MULTIPLY WRK-NUMERO     BY WRK-CONTADOR GIVING WRK-RESULT
               DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-RESULT
               ADD 1                   TO WRK-CONTADOR
           END-PERFORM.
      *================================================================*
       0200-99-FIM.                    EXIT.
      *================================================================*

      *================================================================*
      *    ROTINA QUE FINALIZA O PROGRAMA
      *================================================================*
       0300-FINALIZAR                  SECTION.
      *================================================================*
           DISPLAY 'FIM DO PROCESSAMENTO DO PROGRAMA'.
           STOP RUN.
      *================================================================*
       0300-99-FIM.                    EXIT.
      *================================================================*
