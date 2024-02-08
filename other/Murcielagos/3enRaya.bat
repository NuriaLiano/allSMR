@echo off
title    Gato     -     KeseriK.es.tl
color 9
set suario=0
set omputador=0
set mpates=0
set circulo=O
set cruz=X
 
:escoje
cls
echo.
echo   Escoje
echo            1   --   X
echo            0   --   O
set /p jugad=     
if %jugad%==1 goto cru
if %jugad%==0 (goto circu) else (goto eki)
 
:eki
echo.
echo  Esa tecla no es valida
pause>nul
goto escoje
 
:cru
set jugada=X
set computadores=O
goto randomize
 
:circu
set jugada=O
set computadores=X
goto randomize
 
:randomize
set guion=-
set uno=-
set dos=-
set tres=-
set cuatro=-
set cinco=-
set seis=-
set siete=-
set ocho=-
set nueve=-
set one=1
set two=2
set three=3
set four=4
set five=5
set six=6
set seven=7
set eight=8
set nine=9
set /a rand=%random%
if %rand% leq 2000 goto compu
if %rand% leq 4000 goto inicio
if %rand% leq 6000 goto compu
if %rand% leq 8000 goto inicio
if %rand% leq 10000 goto compu
if %rand% leq 12000 goto inicio
if %rand% leq 14000 goto compu
if %rand% leq 16000 goto inicio
if %rand% leq 18000 goto compu
if %rand% leq 20000 goto inicio
if %rand% leq 22000 goto compu
if %rand% leq 24000 goto inicio
if %rand% leq 26000 goto compu
if %rand% leq 28000 goto inicio
if %rand% leq 30000 goto compu
if %rand% leq 32000 goto inicio
if %rand% leq 34000 goto compu
 
:inicio
cls
echo.
echo    " " " " " " " " " " " " " " " " " " "
echo    "                                   "
echo    "              |     |              "
echo    "           %siete%  |  %ocho%  |  %nueve%           "       Estos son los numeros:
echo    "         _____|_____|_____         "
echo    "              |     |              "
echo    "           %cuatro%  |  %cinco%  |  %seis%           "                           7  8  9
echo    "         _____|_____|_____         "   Usuario    :  %suario%
echo    "              |     |              "                           4  5  6
echo    "           %uno%  |  %dos%  |  %tres%           "   Computador :  %omputador%
echo    "              |     |              "                           1  2  3
echo    "                                   "   Empates    :  %mpates%
echo    " " " " " " " " " " " " " " " " " " "
echo.
echo.
if %uno%%dos%%tres%==%computadores%%computadores%%computadores% goto fin_compu
if %cuatro%%cinco%%seis%==%computadores%%computadores%%computadores% goto fin_compu
if %siete%%ocho%%nueve%==%computadores%%computadores%%computadores% goto fin_compu
if %uno%%cuatro%%siete%==%computadores%%computadores%%computadores% goto fin_compu
if %dos%%cinco%%ocho%==%computadores%%computadores%%computadores% goto fin_compu
if %tres%%seis%%nueve%==%computadores%%computadores%%computadores% goto fin_compu
if %cinco%%siete%%tres%==%computadores%%computadores%%computadores% goto fin_compu
if %nueve%%cinco%%uno%==%computadores%%computadores%%computadores% goto fin_compu
if %uno%==%guion% goto usuario_juega
if %dos%==%guion% goto usuario_juega
if %tres%==%guion% goto usuario_juega
if %cuatro%==%guion% goto usuario_juega
if %cinco%==%guion% goto usuario_juega
if %seis%==%guion% goto usuario_juega
if %siete%==%guion% goto usuario_juega
if %ocho%==%guion% goto usuario_juega
if %nueve%==%guion% (goto usuario_juega) else (goto empate)
 
:usuario_juega
echo   Juegas con %jugada%
echo.
set /p usuario=  elige tu jugada (1-9):  
if %usuario%==%one% (goto usuario_uno)
if %usuario%==%two% (goto usuario_dos)
if %usuario%==%three% (goto usuario_tres)
if %usuario%==%four% (goto usuario_cuatro)
if %usuario%==%five% (goto usuario_cinco)
if %usuario%==%six% (goto usuario_seis)
if %usuario%==%seven% (goto usuario_siete)
if %usuario%==%eight% (goto usuario_ocho)
if %usuario%==%nine% (goto usuario_nueve) else (goto otro)
 
:otro
echo.
echo  Esa tecla no es valida
pause>nul
goto inicio
 
:usuario_uno
if %uno%==%circulo% (goto ocu)
if %uno%==%cruz% (goto ocu)
set uno=%jugada%
goto compu
 
:usuario_dos
if %dos%==%circulo% (goto ocu)
if %dos%==%cruz% (goto ocu)
set dos=%jugada%
goto compu
 
:usuario_tres
if %tres%==%circulo% (goto ocu)
if %tres%==%cruz% (goto ocu)
set tres=%jugada%
goto compu
 
:usuario_cuatro
if %cuatro%==%circulo% (goto ocu)
if %cuatro%==%cruz% (goto ocu)
set cuatro=%jugada%
goto compu
 
:usuario_cinco
if %cinco%==%circulo% (goto ocu)
if %cinco%==%cruz% (goto ocu)
set cinco=%jugada%
goto compu
 
:usuario_seis
if %seis%==%circulo% (goto ocu)
if %seis%==%cruz% (goto ocu)
set seis=%jugada%
goto compu
 
:usuario_siete
if %siete%==%circulo% (goto ocu)
if %siete%==%cruz% (goto ocu)
set siete=%jugada%
goto compu
 
:usuario_ocho
if %ocho%==%circulo% (goto ocu)
if %ocho%==%cruz% (goto ocu)
set ocho=%jugada%
goto compu
 
:usuario_nueve
if %nueve%==%circulo% (goto ocu)
if %nueve%==%cruz% (goto ocu)
set nueve=%jugada%
goto compu
 
:ocu
echo.
echo Esta casilla ya esta ocupada
pause>nul
goto inicio
 
:compu
if %uno%%dos%%tres%==%jugada%%jugada%%jugada% goto fin_usu
if %cuatro%%cinco%%seis%==%jugada%%jugada%%jugada% goto fin_usu
if %siete%%ocho%%nueve%==%jugada%%jugada%%jugada% goto fin_usu
if %uno%%cuatro%%siete%==%jugada%%jugada%%jugada% goto fin_usu
if %dos%%cinco%%ocho%==%jugada%%jugada%%jugada% goto fin_usu
if %tres%%seis%%nueve%==%jugada%%jugada%%jugada% goto fin_usu
if %siete%%cinco%%tres%==%jugada%%jugada%%jugada% goto fin_usu
if %nueve%%cinco%%uno%==%jugada%%jugada%%jugada% goto fin_usu
if %uno%%dos%%tres%==%computadores%%computadores%%guion% goto si_tres
if %uno%%dos%%tres%==%computadores%%guion%%computadores% goto si_dos
if %uno%%dos%%tres%==%guion%%computadores%%computadores% goto si_uno
if %cuatro%%cinco%%seis%==%computadores%%computadores%%guion% goto si_seis
if %cuatro%%cinco%%seis%==%computadores%%guion%%computadores% goto si_cinco
if %cuatro%%cinco%%seis%==%guion%%computadores%%computadores% goto si_cuatro
if %siete%%ocho%%nueve%==%computadores%%computadores%%guion% goto si_nueve
if %siete%%ocho%%nueve%==%computadores%%guion%%computadores% goto si_ocho
if %siete%%ocho%%nueve%==%guion%%computadores%%computadores% goto si_siete
if %uno%%cuatro%%siete%==%computadores%%computadores%%guion% goto si_siete
if %uno%%cuatro%%siete%==%computadores%%guion%%computadores% goto si_cuatro
if %uno%%cuatro%%siete%==%guion%%computadores%%computadores% goto si_uno
if %dos%%cinco%%ocho%==%computadores%%computadores%%guion% goto si_ocho
if %dos%%cinco%%ocho%==%computadores%%guion%%computadores% goto si_cinco
if %dos%%cinco%%ocho%==%guion%%computadores%%computadores% goto si_dos
if %tres%%seis%%nueve%==%computadores%%computadores%%guion% goto si_nueve
if %tres%%seis%%nueve%==%computadores%%guion%%computadores% goto si_seis
if %tres%%seis%%nueve%==%guion%%computadores%%computadores% goto si_tres
if %siete%%cinco%%tres%==%computadores%%computadores%%guion% goto si_tres
if %siete%%cinco%%tres%==%computadores%%guion%%computadores% goto si_cinco
if %siete%%cinco%%tres%==%guion%%computadores%%computadores% goto si_siete
if %nueve%%cinco%%uno%==%computadores%%computadores%%guion% goto si_uno
if %nueve%%cinco%%uno%==%computadores%%guion%%computadores% goto si_cinco
if %nueve%%cinco%%uno%==%guion%%computadores%%computadores% goto si_nueve
if %uno%%dos%%tres%==%jugada%%jugada%%guion% goto si_tres
if %uno%%dos%%tres%==%jugada%%guion%%jugada% goto si_dos
if %uno%%dos%%tres%==%guion%%jugada%%jugada% goto si_uno
if %cuatro%%cinco%%seis%==%jugada%%jugada%%guion% goto si_seis
if %cuatro%%cinco%%seis%==%jugada%%guion%%jugada% goto si_cinco
if %cuatro%%cinco%%seis%==%guion%%jugada%%jugada% goto si_cuatro
if %siete%%ocho%%nueve%==%jugada%%jugada%%guion% goto si_nueve
if %siete%%ocho%%nueve%==%jugada%%guion%%jugada% goto si_ocho
if %siete%%ocho%%nueve%==%guion%%jugada%%jugada% goto si_siete
if %uno%%cuatro%%siete%==%jugada%%jugada%%guion% goto si_siete
if %uno%%cuatro%%siete%==%jugada%%guion%%jugada% goto si_cuatro
if %uno%%cuatro%%siete%==%guion%%jugada%%jugada% goto si_uno
if %dos%%cinco%%ocho%==%jugada%%jugada%%guion% goto si_ocho
if %dos%%cinco%%ocho%==%jugada%%guion%%jugada% goto si_cinco
if %dos%%cinco%%ocho%==%guion%%jugada%%jugada% goto si_dos
if %tres%%seis%%nueve%==%jugada%%jugada%%guion% goto si_nueve
if %tres%%seis%%nueve%==%jugada%%guion%%jugada% goto si_seis
if %tres%%seis%%nueve%==%guion%%jugada%%jugada% goto si_tres
if %siete%%cinco%%tres%==%jugada%%jugada%%guion% goto si_tres
if %siete%%cinco%%tres%==%jugada%%guion%%jugada% goto si_cinco
if %siete%%cinco%%tres%==%guion%%jugada%%jugada% goto si_siete
if %nueve%%cinco%%uno%==%jugada%%jugada%%guion% goto si_uno
if %nueve%%cinco%%uno%==%jugada%%guion%%jugada% goto si_cinco
if %nueve%%cinco%%uno%==%guion%%jugada%%jugada% goto si_nueve
if %uno%==- goto computador
if %dos%==- goto computador
if %tres%==- goto computador
if %cuatro%==- goto computador
if %cinco%==- goto computador
if %seis%==- goto computador
if %siete%==- goto computador
if %ocho%==- goto computador
if %nueve%==- (goto computador) else (goto empate)
 
:computador
set /a x=%random%
if %x% leq 3640 goto siete
if %x% leq 7280 goto ocho
if %x% leq 10920 goto seis
if %x% leq 14560 goto uno
if %x% leq 18200 goto cinco
if %x% leq 21840 goto nueve
if %x% leq 25480 goto cuatro
if %x% leq 29120 goto tres
if %x% leq 32767 goto dos
 
:uno
if %uno%==%guion% (goto si_uno) else (goto compu)
:dos
if %dos%==%guion% (goto si_dos) else (goto compu)
:tres
if %tres%==%guion% (goto si_tres) else (goto compu)
 
:cuatro
if %cuatro%==%guion% (goto si_cuatro) else (goto compu)
 
:cinco
if %cinco%==%guion% (goto si_cinco) else (goto compu)
 
:seis
if %seis%==%guion% (goto si_seis) else (goto compu)
 
:siete
if %siete%==%guion% (goto si_siete) else (goto compu)
 
:ocho
if %ocho%==%guion% (goto si_ocho) else (goto compu)
 
:nueve
if %nueve%==%guion% (goto si_nueve) else (goto compu)
 
:si_uno
set uno=%computadores%
goto inicio
 
:si_dos
set dos=%computadores%
goto inicio
 
:si_tres
set tres=%computadores%
goto inicio
 
:si_cuatro
set cuatro=%computadores%
goto inicio
 
:si_cinco
set cinco=%computadores%
goto inicio
 
:si_seis
set seis=%computadores%
goto inicio
 
:si_siete
set siete=%computadores%
goto inicio
 
:si_ocho
set ocho=%computadores%
goto inicio
 
:si_nueve
set nueve=%computadores%
goto inicio
 
:fin_compu
echo.
echo       Game over
echo.
set /a omputador=omputador+1
echo.
echo   Presione una tecla para volver a jugar
pause>nul
goto randomize
 
:fin_usu
echo.
echo       You Win
echo.
set /a suario=suario+1
echo.
echo   Presione una tecla para volver a jugar
pause>nul
goto randomize
 
:empate
echo.
echo      Empate
set /a mpates=mpates+1
echo.
echo   Presione una tecla para volver a jugar
pause>nul
goto randomize