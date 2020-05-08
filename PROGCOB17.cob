       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB17.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: USAR REDEFINES
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
       01  WRK-MESES-EXTENSO.
           02 FILLER                   PIC X(003) VALUE 'JAN'.
           02 FILLER                   PIC X(003) VALUE 'FEV'.
           02 FILLER                   PIC X(003) VALUE 'MAR'.
           02 FILLER                   PIC X(003) VALUE 'ABR'.
           02 FILLER                   PIC X(003) VALUE 'MAI'.
           02 FILLER                   PIC X(003) VALUE 'JUN'.
           02 FILLER                   PIC X(003) VALUE 'JUL'.
           02 FILLER                   PIC X(003) VALUE 'AGO'.
           02 FILLER                   PIC X(003) VALUE 'SET'.
           02 FILLER                   PIC X(003) VALUE 'OUT'.
           02 FILLER                   PIC X(003) VALUE 'NOV'.
           02 FILLER                   PIC X(003) VALUE 'DEZ'.
       01  WRK-MESES                   REDEFINES WRK-MESES-EXTENSO.
           02  WRK-MES                 PIC X(003) OCCURS 12 TIMES.
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
