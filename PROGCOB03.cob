       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB03.
      *****************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR VARIAVEIS NIVEL 01.02... (ESTRUTURADA)
      * DATA = XX/XX/XXXX
      *****************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *
       01 WRK-DATA.
           05 WRK-ANO                  PIC 9(04) VALUE ZEROS.
           05 WRK-MES                  PIC 9(02) VALUE ZEROS.
           05 WRK-DIA                  PIC 9(02) VALUE ZEROS.
      *
       PROCEDURE DIVISION.
           ACCEPT WRK-DATA             FROM DATE YYYYMMDD.
           DISPLAY 'DATA ' WRK-DIA ' DE ' WRK-MES ' DE ' WRK-ANO.
           STOP RUN.
