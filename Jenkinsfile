pipeline{
     agent any
     stages{           
       stage('Prepara'){     
         steps{
            echo 'Iniciando a Pipiline'
         }
      }
       stage('Build Aplicação'){
         steps{               
			bat '''@ECHO OFF
			@ECHO "----------------------------------------------------------------------------"
			@ECHO Compilando o Projeto
			@ECHO "----------------------------------------------------------------------------"			
			@ECHO OFF			
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
			MSBuild %LO_Slos% -t:clean -p:config=%BUILD_CONFIG% -p:platform=Win32			
			@ECHO Compilando projeto
			MSBuild %SGA_DPROJ% -t:Build -p:config=%BUILD_CONFIG% -p:platform=Win32
			REM /v:diagnostic

			@ECHO Build %BUILD_CONFIG% done!'''
         }
      }
       stage('Prepara Testes'){
         steps{               
			bat '''@ECHO OFF
			@ECHO "----------------------------------------------------------------------------"
			@ECHO Preparando a Aplicacao de Testes
			@ECHO "----------------------------------------------------------------------------"			
			@ECHO OFF
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
			@SET TESTESGA_EXE=TesteSga.exe					   

			@ECHO %TESTESGA_EXE%
			@SET TESTESGA_DPROJ="C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\SGA\\Tese\\TesteSga.dproj"
			@ECHO %START_BUILD_STR% %TESTESGA_DPROJ%
			DEL "C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\SGA\\Teste\\"%TESTESGA_EXE%
			@ECHO Limpando a compilancao anterior
			MSBuild %LO_Slos% -t:clean -p:config=%BUILD_CONFIG% -p:platform=Win32			
			@ECHO Compilando projeto
			MSBuild %TESTESGA_DPROJ% -t:Build -p:config=%BUILD_CONFIG% -p:platform=Win32
			REM /v:diagnostic

			@ECHO Build %BUILD_CONFIG% done!'''
         }
      }	  
       stage('Executa Testes'){
         steps{               
			bat '''
			@ECHO OFF
			@ECHO "----------------------------------------------------------------------------"
			@ECHO Preparando a Aplicacao de Testes
			@ECHO "----------------------------------------------------------------------------"			
			@ECHO OFF
			@SET TESTESGA_EXE=TesteSga.exe					   
			"C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\SGA\\Teste\\"%TESTESGA_EXE%
			'''
         }
      }	  
   }
}   
