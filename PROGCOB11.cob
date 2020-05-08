       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB11.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: RECEBER LARGURA E COMPRIMENTO
      * UTILIZAR VARIAVEL NIVEL 88 - LOGICA
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
       77  WRK-LARGURA                 PIC 9(003)V99   VALUE ZEROS.
       77  WRK-COMPRIMENTO             PIC 9(003)V99   VALUE ZEROS.
       77  WRK-AREA                    PIC 9(003)V99   VALUE ZEROS.
      *
       PROCEDURE DIVISION.
           DISPLAY 'LARGURA'
           ACCEPT WRK-LARGURA.
           DISPLAY 'COMPRIMENTO'
           ACCEPT WRK-COMPRIMENTO.

           IF  WRK-LARGURA             EQUAL ZEROS
           OR  WRK-LARGURA             NOT NUMERIC
               DISPLAY 'A LARGURA EH OBRIGATORIA'
               PERFORM 3000-FINALIZAR
           END-IF.

           IF  WRK-COMPRIMENTO         EQUAL ZEROS
           OR  WRK-COMPRIMENTO         NOT NUMERIC
               DISPLAY 'O COMPRIMENTO O OBRIGATORIA'
               PERFORM 3000-FINALIZAR
           END-IF.

           COMPUTE WRK-AREA = (WRK-COMPRIMENTO * WRK-LARGURA)

           DISPLAY 'A AREA EH: ' WRK-AREA.

           PERFORM 3000-FINALIZAR.

      *================================================================*
       3000-FINALIZAR                  SECTION.
      *================================================================*
           STOP RUN.
      *================================================================*
       3000-99-FIM.                    EXIT.
      *================================================================*
