@echo off
cls
echo AntiWPA patch for 32/64-bit Windows
echo ===================================
echo.
If exist %systemroot%\system32\antiwpa.dll goto uninstall
	echo This fix disables Windows activation permanently
	echo until you chosse to uninstall it.
	echo.
	echo Press CTRL+C to cancel now or ENTER to continue
	pause >nul
	echo -------------------------------------------------------------
	echo.
	echo Installing %PROCESSOR_ARCHITECTURE%\antiwpa.dll...
	
	regsvr32 /s %PROCESSOR_ARCHITECTURE%\antiwpa.dll
	
	echo Patch has been successfully installed!
	
goto end


:uninstall
	echo The AntiWPA patch is already installed.
	echo.	
	echo Press CTRL+C to cancel now or ENTER for uninstall...
	pause >nul

	echo.
	echo Uninstalling %PROCESSOR_ARCHITECTURE%\antiwpa.dll...
	
	regsvr32 /s /u %PROCESSOR_ARCHITECTURE%\antiwpa.dll
	
	del %systemroot%\system32\AntiWPA.dll*	
	
	echo Patch has been successfully uninstalled!

:end
	echo.
	echo Thanks goes to HLT.
	echo Without him this patch would not have been possible.

pause >nul