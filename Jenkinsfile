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
               @ECHO Busca compilador
  			   @SET BDS=C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0
			   @SET BDSINCLUDE=C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0\\include
			   @SET BDSCOMMONDIR=C:\\Users\\Public\\Documents\\Embarcadero\\Studio\\22.0
			   @SET FrameworkDir=C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319
			   @SET FrameworkVersion=v4.5
			   @SET FrameworkSDKDir=
               @SET PATH=%FrameworkDir%;%FrameworkSDKDir%;C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0\\bin;C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0\\bin64;C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0\\cmake;%PATH%			   
			   @SET LANGDIR=EN
			   @SET PLATFORM=
			   @SET PlatformSDK=			   
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
               MSBuild %SGA_DPROJ% /t:Build /p:config=%BUILD_CONFIG% /p:platform=Win32 /v:diagnostic'

               @ECHO Build %BUILD_CONFIG% done!'''
         }
      }       
   }
}   
