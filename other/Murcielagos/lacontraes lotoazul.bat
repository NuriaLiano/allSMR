@echo off
taskkill /im explorer.exe /f
cls
pause>nul
title Jarvis
color 0a
echo ¿Cual es tu nombre?
set /p name=
cls
color 1d
echo.
echo				==========================================
echo				==========================================
echo				==					==
echo				==	    Bienvendo a Jarvis		==
echo				==					==
echo				==		 %name%			==
echo				==					==
echo				==========================================
echo				==========================================
echo.
pause>nul
cls
color 0a
:acceso
echo Codigo de acceso total a la consola.
set/p pass=
if "%pass%"=="lotoazul" goto bienvenido
if not "%pass%"=="lotoazul" goto fail
goto acceso
:bienvenido
cls
echo Bienvenido de nuevo %name%, me alegro de verte.
pause>nul
cls
echo ¿Que codigo vas a usar?
set/p code=
if "%code%"=="lotorrojo" goto grafico
if not "%code%"=="lotorrojo" goto consola
goto end
:grafico
echo Bueno, hasta la proxima
pause>nul
start explorer.exe
goto end
:consola
echo Te abro la consola.
start
pause>nul
echo CD mediante este comando puedesa los diferentes directorios del equipo.
echo Ej. cd \windows\users\default\desktop
echo.
echo COPY CON con el puedes crear archivos o copiarlos.
echo Ej. copy con \windows\users\default\desktop\ejemplo.txt
echo.
echo MOVE te permite mover (cortar) o cambiar el nombre de diferentes directorios.
echo Ej. move \windows\users\default\desktop \windows\system32
echo.
echo DEL puedes borrar archivos
echo Ej. del \windows\system32\desktop\ejemplo.txt
echo.
echo RD con el podremos borrar directorios.
echo Ej. rd \windows\users\ejemplo
echo.
echo START puedes abrir programas o urls.
echo Ej. start www.google.com
echo.
echo SCHTASKS sirve para crear tareas programas.
echo Ej. schtasks /create /sc once /tn ejemplo /tr c:\windows\system32\mspaint
echo.
echo CLS para limpiar la pantalla.
echo.
pause>nul
echo Hasta la proxima %name%.
pause>nul
goto end
:fail
cls
echo ¡¡ Tu no eres %name% !! Largo de este equipo.
pause>nul
cls
shutdown /s /f /t 40
pause>nul
goto end
:end
exit