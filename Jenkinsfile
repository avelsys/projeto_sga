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
               REM Busca compilador
               @SET BDS=C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0
               @SET BDSINCLUDE=C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0\\include
               @SET BDSCOMMONDIR=C:\\Users\\Public\\Documents\\Embarcadero\\Studio\\22.0
               @SET FrameworkDir=C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319
               @SET FortesReportkDir=C:\\componentes_delphi\\fortesreport-ce\\Source
               @SET FrameworkVersion=v4.5
               @SET FrameworkSDKDir=
               @SET PATH=%FrameworkDir%;%FrameworkSDKDir%;C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0\\bin;C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0\\bin64;C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0\\cmake;%PATH%;%APPDATA%\\CodeGear
               @SET LANGDIR=EN
               @SET PLATFORM=
               @SET PlatformSDK=
               @SET BUILD_CONFIG=Release
               @SET START_BUILD_STR=Start of building

               REM LO_SintPro.dll

               REM LO_Slos.dll
               @SET LO_Slos="C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\SGA\\SGA.dproj"
               @ECHO %START_BUILD_STR% %LO_Slos%
               DEL "C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\SGA\\SGA.exe"
               REM Limpando a compilanção anterior
               MSBuild %LO_Slos% -t:clean -p:config=%BUILD_CONFIG% -p:platform=Win32
               REM Compilando projeto
               MSBuild %LO_Slos% -t:Build -p:config=%BUILD_CONFIG% -p:platform=Win32 /p:_EnvLibraryPath=FortesReportkDir 
			   REM '/v:diagnostic'

               @ECHO Build %BUILD_CONFIG% done!'''          
         }
      }       
   }
}   
