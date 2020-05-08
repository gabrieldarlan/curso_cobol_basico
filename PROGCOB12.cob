       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
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
       77 FILLER                       PIC X(050) VALUE
          'AREA PARA VARIAVIES AUXILIARES'.
      *================================================================*
      *
       77  WRK-NOTA1                    PIC 9(002)     VALUE ZEROS.
       77  WRK-NOTA2                    PIC 9(002)     VALUE ZEROS.
       77  WRK-MEDIA                    PIC 9(004)V9   VALUE ZEROS.
      *
       PROCEDURE DIVISION.
      *================================================================*
      *    AREA PRINCIPAL DO PROGRAMA
      *================================================================*
       0001-PRINCIPAL                  SECTION.
      *================================================================*
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
      *================================================================*
       0001-99-FIM.                    EXIT.
      *================================================================*

      *================================================================*
      *    INICIALIZAR A ENTRADA
      *================================================================*
       0100-INICIALIZAR                SECTION.
      *================================================================*
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
      *================================================================*
       0100-99-FIM.                    EXIT.
      *================================================================*

      *================================================================*
      *    PROCESSAMENTO PRINCIPAL DO PROGRAMA
      *================================================================*
       0200-PROCESSAR                  SECTION.
      *================================================================*
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
