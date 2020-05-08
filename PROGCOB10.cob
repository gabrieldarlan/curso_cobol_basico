       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB10.
      ******************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = GABRIEL(BRQ) GABRIEL
      * OBJETIVO: RECEBER USUARIO E NIVEL
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
       77  WRK-USUARIO                 PIC X(020)      VALUE SPACES.
       77  WRK-NIVEL                   PIC 9(002)      VALUE ZEROS.
           88 WRK-ADM                  VALUE 01.
           88 WRK-USER                 VALUE 02.
      *
       PROCEDURE DIVISION.
           DISPLAY 'USUARIO:'
           ACCEPT WRK-USUARIO
           DISPLAY 'NIVEL'
           ACCEPT WRK-NIVEL

           IF  WRK-ADM
               DISPLAY 'NIVEL - ADMINISTRADOR'
           ELSE
               IF  WRK-USER
                   DISPLAY 'NIVEL - USUARIO'
               ELSE
                   DISPLAY 'USUARIO NAO AUTORIZADO'
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
