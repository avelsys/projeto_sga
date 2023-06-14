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
			   call "C:\\Program Files (x86)\\Embarcadero\\Studio\\22.0\\bin\\rsvars.bat"	   			   
			   @SET BUILD_CONFIG=Release
               @SET START_BUILD_STR=Start of building			   
			   @SET SGA_EXE=SGA.exe					   
			   
               @ECHO %SGA_EXE%
			   @ECHO descricao do path do windows %PATH%			   
               @SET SGA_DPROJ="C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\SGA\\SGA.dproj"
               @ECHO %START_BUILD_STR% %SGA_DPROJ%
               DEL "C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\SGA\\"%SGA_EXE%
               @ECHO Compilando projeto
               MSBuild %SGA_DPROJ% /t:Build /p:config=%BUILD_CONFIG% -I"c:\\program files (x86)\\embarcadero\\studio\\22.0\\lib\\Win32\\release";C:\\componentes_delphi\\fortesreport-ce\\Binary\\LibD28;C:\\componentes_delphi\\ACBrTrunk2\\Lib\\Delphi\\LibD28\\Win32;  C:\\componentes_delphi\\JEDI\\jcl\\jcl\\lib\\d28\\win32\\release;"c:\\program files (x86)\\embarcadero\\studio\\22.0\\lib\\Win32\\release";  C:\\Users\\aveli\\OneDrive\\Documentos\\Embarcadero\\Studio\\22.0\\Imports;C:\\Users\\aveli\\OneDrive\\Documentos\\Embarcadero\\Studio\\22.0\\Imports\\Win32;  "c:\\program files (x86)\\embarcadero\\studio\\22.0\\Imports";C:\\Users\\Public\\Documents\\Embarcadero\\Studio\\22.0\\Dcp;"c:\\program files   (x86)\\embarcadero\\studio\\22.0\\include";C:\\componentes_delphi\\ACBrTrunk2\\Lib\\Delphi\\LibD28\\Win32;C:\\componentes_delphi\\JEDI\\jcl\\jcl\\lib\\d28\\win32;  C:\\componentes_delphi\\JEDI\\jcl\\jcl\\source\\include;C:\\componentes_delphi\\skia4delphi\\Source;C:\\componentes_delphi\\skia4delphi\\Source\\FMX;  C:\\componentes_delphi\\skia4delphi\\Source\\VCL;C:\\componentes_delphi\\skia4delphi\\Source\\FMX\\Designtime;  C:\\componentes_delphi\\skia4delphi\\Source\\VCL\\Designtime;"C:\\componentes_delphi\\skia4delphi\\Library\\RAD Studio 11 Alexandria\\Win32\\Release";  C:\\Users\\aveli\\AppData\\Local\\Programs\\TestInsight\\Source;C:\\componentes_delphi\\fortesreport-ce\\Binary\\LibD28; C:\\componentes_delphi\\DevexpressD11\\Library\\RS28
			   REM /v:diagnostic

               @ECHO Build %BUILD_CONFIG% done!'''
         }
      }       
   }
}   
