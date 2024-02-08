@echo off
:volver
set tu=
set r=%random%
set p=15000
set a=20000
set t=25000
if %r% LEQ %p% (goto piedra)
if %r% LEQ %a% (goto papel)
if %r% LEQ %t% (goto tigera)
if %r% GEQ %t% (goto tigera)
:piedra
echo 1 piedra
echo.
echo 2 papel
echo.
echo 3 tigera
echo.
echo elige 1,2 o 3
echo.
set/p tu=
if %tu%==1 (
echo EMPATE :!
pause >nul
cls
goto volver
)
if %tu%==2 (
echo GANASTE ¡¡¡
pause >nul
cls
goto volver
)
if %tu%==3 (
echo PERDISTE !!!
pause >nul
cls
goto volver
)
:papel
echo 1 piedra
echo.
echo 2 papel
echo.
echo 3 tigera
echo.
echo elige 1,2 o 3
echo.
set/p tu=
if %tu%==2 (
echo EMPATE :!
pause >nul
cls
goto volver
)
if %tu%==3 (
echo GANASTE ¡¡¡
pause >nul
cls
goto volver
)
if %tu%==1 (
echo PERDISTE !!!
pause >nul
cls
goto volver
)
:tigera
echo 1 piedra
echo.
echo 2 papel
echo.
echo 3 tigera
echo.
echo elige 1,2 o 3
echo.
set/p tu=
if %tu%==3 (
echo EMPATE :!
pause >nul
cls
goto volver
)
if %tu%==1 (
echo GANASTE ¡¡¡
pause >nul
cls
goto volver
)
if %tu%==2 (
echo PERDISTE !!!
pause >nul
cls
goto volver
 
)