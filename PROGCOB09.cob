       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB09.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: RECEBER PRODUTO, VALOR E CALCULAR O FRETE
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
       77  WRK-PRODUTO                 PIC X(020)      VALUE SPACES.
       77  WRK-UF                      PIC X(002)      VALUE SPACES.
       77  WRK-VALOR                   PIC 9(006)V99   VALUE ZEROS.
       77  WRK-FRETE                   PIC 9(004)V99   VALUE ZEROS.
      *
       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO:'
           ACCEPT WRK-PRODUTO.
           DISPLAY 'VALOR:'
           ACCEPT WRK-VALOR.
           DISPLAY 'ESTADO A ENTREGAR:'
           ACCEPT WRK-UF.

           EVALUATE WRK-UF
               WHEN 'SP'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,05
               WHEN 'RJ'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,10
               WHEN 'MG'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,15
               WHEN OTHER
                   DISPLAY 'NAO PODEMOS ENTREGAR'
           END-EVALUATE.

           IF WRK-FRETE                NOT EQUAL ZEROS
               DISPLAY '==================='
               DISPLAY 'VALOR DO PRODUTO COM O FRETE ' WRK-FRETE
           END-IF.

           PERFORM 3000-FINALIZAR.

      *================================================================*
       3000-FINALIZAR                  SECTION.
      *================================================================*
           STOP RUN.
      *================================================================*
       3000-99-FIM.                    EXIT.
      *================================================================*
