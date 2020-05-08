       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: FAZER UM LAÇO COM UNTIL
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
           COPY 'BOOK.COB'.
      *
       PROCEDURE DIVISION.
      *================================================================*
      *    AREA PRINCIPAL DO PROGRAMA
      *================================================================*
       0001-PRINCIPAL                  SECTION.
      *================================================================*
           PERFORM 0100-INICIALIZAR.
           IF  WRK-VENDAS              GREATER ZEROS
               PERFORM 0200-PROCESSAR  UNTIL WRK-VENDAS EQUAL ZEROS
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
           DISPLAY 'INSIRA O VALOR DA VENDA'.
           ACCEPT WRK-VENDAS.
      *================================================================*
       0100-99-FIM.                    EXIT.
      *================================================================*

      *================================================================*
      *    PROCESSAMENTO PRINCIPAL DO PROGRAMA
      *================================================================*
       0200-PROCESSAR                  SECTION.
      *================================================================*
           ADD 1                       TO WRK-QTD.
           ADD WRK-VENDAS              TO WRK-ACUMULADOR-VENDAS.
           DISPLAY 'INSIRA O VALOR DA VENDA'.
           ACCEPT WRK-VENDAS.
      *================================================================*
       0200-99-FIM.                    EXIT.
      *================================================================*

      *================================================================*
      *    ROTINA QUE FINALIZA O PROGRAMA
      *================================================================*
       0300-FINALIZAR                  SECTION.
      *================================================================*
           DISPLAY '*****************TOTAIS************************'
           DISPLAY 'QUANTIDE DE VENDAS.........:'WRK-QTD.
           DISPLAY 'VALOR DO TOTAL VENDAS......:'WRK-ACUMULADOR-VENDAS
           DISPLAY '***********************************************'

           DISPLAY 'FIM DO PROCESSAMENTO DO PROGRAMA'.

           STOP RUN.
      *================================================================*
       0300-99-FIM.                    EXIT.
      *================================================================*
