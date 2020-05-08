       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB16.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: USAR VARIAVEL TIPO TABELA
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
       01  WRK-MESES.
           03  WRK-MES                 PIC X(009) OCCURS 12 TIMES.
      *
       01 WRK-DATA.
           05 WRK-ANO-SYS              PIC 9(04) VALUE ZEROS.
           05 WRK-MES-SYS              PIC 9(02) VALUE ZEROS.
           05 WRK-DIA-SYS              PIC 9(02) VALUE ZEROS.
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

           PERFORM 0400-MONTA-MES.
           ACCEPT WRK-DATA             FROM DATE YYYYMMDD.
           DISPLAY 'DIA ' WRK-DIA-SYS ' DE ' WRK-MES(WRK-MES-SYS)
           ' DE ' WRK-ANO-SYS.
      *================================================================*
       0100-99-FIM.                    EXIT.
      *================================================================*

      *================================================================*
      *    PROCESSAMENTO PRINCIPAL DO PROGRAMA
      *================================================================*
       0200-PROCESSAR                  SECTION.
      *================================================================*

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
      *================================================================*
      *
      *================================================================*
       0400-MONTA-MES                  SECTION.
      *================================================================*
           MOVE 'JANEIRO'              TO WRK-MES(01).
           MOVE 'FEVEREIRO'            TO WRK-MES(02).
           MOVE 'MARCO'                TO WRK-MES(03).
           MOVE 'ABRIL'                TO WRK-MES(04).
           MOVE 'MAIO'                 TO WRK-MES(05).
           MOVE 'JUNHO'                TO WRK-MES(06).
           MOVE 'JULHO'                TO WRK-MES(07).
           MOVE 'AGOSTO'               TO WRK-MES(08).
           MOVE 'SETEMBRO'             TO WRK-MES(09).
           MOVE 'OUTUBRO'              TO WRK-MES(10).
           MOVE 'NOVEMBRO'             TO WRK-MES(11).
           MOVE 'DEZEMBRO'             TO WRK-MES(12).
      *================================================================*
       0400-99-FIM.                    EXIT.
      *================================================================*
