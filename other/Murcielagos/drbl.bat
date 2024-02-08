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
echo                              ===========================
echo                              ==                       ==
echo                              ==  Bienvenido a Jarvis  ==
echo                              ==                       ==
color 0a
echo                                        %name%        
color 1d
echo                              ==                       ==
echo                              ===========================
echo.
pause>nul
cls
color 0a
echo Codigo de acceso total a la consola.
cls
echo Bienvenido de nuevo %name%, me alegro de verte.
pause>nul
cls
echo Te abro la consola.
start
pause>
cls
exit
