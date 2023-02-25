REM Busca compilador
cd source
call "c:\program files (x86)\embarcadero\studio\22.0\bin\rsvars.bat"
REM Busca arquivo do projeto
FOR /F "delims=" %%i IN ('dir /b "*.dproj"') DO set projeto=%%i
	@@ -13,4 +14,4 @@ REM executa
%executavel%
@echo on

pause
