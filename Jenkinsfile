pipeline{
     agent any
     stages{           
       stage('Prepara'){     
         steps{
              echo 'Iniciando a Pipiline'
         }
      }
       stage('Compila'){
         steps{               
               bat '''@ECHO OFF
			   call "C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0\\bin\\rsvars.bat"
			   @SET BUILD_CONFIG=Release
               @SET START_BUILD_STR=Start of building
			   @SET SGA_EXE=SGA.exe

               @ECHO %SGA_EXE%
               @SET SGA_DPROJ="C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\SGA\\SGA.dproj"
               @ECHO %START_BUILD_STR% %SGA_DPROJ%
               DEL "C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\SGA\\"%SGA_EXE%
               @ECHO Limpando a compilancao anterior
               MSBuild %SGA_DPROJ% -t:clean -p:config=%BUILD_CONFIG% -p:platform=Win32
               @ECHO Compilando projeto
               MSBuild %SGA_DPROJ% -t:Build -p:config=%BUILD_CONFIG% -p:platform=Win32
			   REM '/v:diagnostic'

               @ECHO Build %BUILD_CONFIG% done!'''
         }
      }       
   }
}   
