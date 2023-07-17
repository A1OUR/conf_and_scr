@ECHO OFF
ECHO InGameCC mod installer for S.T.A.L.K.E.R. - Shadow of Chernobyl
ECHO ---------------------------------------------------------------

SET STALKERPATH=%1
IF NOT "%STALKERPATH%"=="" GOTO :checkPath
FOR /F "tokens=2*" %%A IN ('reg query "HKLM\SOFTWARE\GSC Game World\STALKER-SHOC" /v InstallPath') DO SET STALKERPATH=%%B

:checkPath
ECHO %STALKERPATH% | FIND ":\" >NUL
IF ERRORLEVEL 1 GOTO :errNoStalker
IF NOT EXIST "%STALKERPATH%\bin\XR_3DA.exe" GOTO :errStillNoStalker
IF NOT EXIST .\gamedata\scripts\closecaption.script GOTO :errNoSetupFiles
IF EXIST "%STALKERPATH%\gamedata\scripts\closecaption.script" GOTO :errCCExists

ECHO.
ECHO S.T.A.L.K.E.R. is installed in folder: 
ECHO '%STALKERPATH%'
ECHO.
SET Continue=n
SET /P Continue=Do you want to install InGameCC mod into this folder? [y/n] 
SET Continue=%Continue:~0,1%
ECHO %Continue%n | FIND /I "y" >NUL
IF ERRORLEVEL 1 GOTO :end

:doInstall
COPY InGameCC_files.lst "%STALKERPATH%"
COPY Remove-InGameCC.bat "%STALKERPATH%"
COPY Set-InGameCC_10000-10003.bat "%STALKERPATH%"
COPY Set-InGameCC_10004-10006.bat "%STALKERPATH%"
COPY STALKER-InGameCC_ReadMe.txt "%STALKERPATH%"
FOR /F "eol=; skip=1" %%A IN (InGameCC_files.lst) DO IF EXIST "%STALKERPATH%\%%A" COPY "%STALKERPATH%\%%A" "%STALKERPATH%\%%A.IGCCbk" >NUL
XCOPY .\gamedata "%STALKERPATH%\gamedata\" /E /Q /Y

IF NOT EXIST "%STALKERPATH%\bin\msvcr80.dll" GOTO :versionOK
COPY "%STALKERPATH%\gamedata\config\ui\ui_movies10004.xml" "%STALKERPATH%\gamedata\config\ui\ui_movies.xml" >NUL
ECHO.
ECHO NOTE: Subtitles of cutscenes will not appear on this (1.0004 or later) 
ECHO       version of game engine.
ECHO.
GOTO :end

:versionOK
COPY "%STALKERPATH%\gamedata\config\ui\ui_movies10003.xml" "%STALKERPATH%\gamedata\config\ui\ui_movies.xml" >NUL
ECHO.
ECHO NOTE: If you update to v1.0004 or a later version then please remember to
ECHO       re-install InGameCC mod or run 'Set-InGameCC_10004-10006.bat'.
ECHO.
GOTO :end




:errNoStalker
IF "%1"=="" ECHO S.T.A.L.K.E.R. game folder cannot be read from registry.
IF NOT "%1"=="" ECHO Game not found in folder specified: '%1'
ECHO.
ECHO NOTE: You can specify game folder as an argument for the installer:
ECHO.
ECHO       Install-InGameCC [folderspec]
ECHO.
GOTO :end

:errStillNoStalker
ECHO.
ECHO S.T.A.L.K.E.R. game executable cannot be found in folder
ECHO '%STALKERPATH%\bin'. 
ECHO Installer failed.
ECHO.
ECHO However, installation can be done by copying all files and the 'gamedata'
ECHO folder with all its contents into the installed game folder.
ECHO.
ECHO If you use game version 1.0003 or older, you should run the batch file called
ECHO 'Set-InGameCC_10000-10003.bat' to let subtitles appear in cutscenes as well.
ECHO Unfortunately v1.0004 and later game versions don't have this feature at all.
ECHO.
GOTO :end

:errNoSetupFiles
ECHO.
ECHO Setup kit is not complete.
GOTO :end

:errCCExists
ECHO.
ECHO Error: One version of the closed caption mods is already installed.
ECHO.
ECHO Solution: Remove the installed CC mod and try again.
ECHO.

:end
SET Continue=
SET STALKERPATH=
ECHO Installer has quit
PAUSE
