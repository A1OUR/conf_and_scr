@ECHO OFF
IF NOT EXIST InGameCC_files.lst GOTO :noFileList
ECHO Removing InGameCC mod
FOR /F "eol=; skip=1" %%A IN (InGameCC_files.lst) DO DEL "%%A"
FOR /F "eol=; skip=1" %%A IN (InGameCC_files.lst) DO IF EXIST "%%A.IGCCbk" MOVE "%%A.IGCCbk" "%%A"
rd gamedata\textures\ui
rd gamedata\textures
rd gamedata\sounds\characters_voice\scenario\sarcofag
rd gamedata\sounds\characters_voice\scenario
rd gamedata\sounds\characters_voice
rd gamedata\sounds\ambient
rd gamedata\sounds
rd gamedata\scripts
rd gamedata\config\ui
rd gamedata\config\text\rus
rd gamedata\config\text\eng
rd gamedata\config\text
rd gamedata\config\scripts
rd gamedata\config\misc
rd gamedata\config\gameplay
rd gamedata\config
rd gamedata
del Install-InGameCC.bat
del Set-InGameCC_10000-10003.bat
del Set-InGameCC_10004-10006.bat
del STALKER-InGameCC_ReadMe.txt
del InGameCC_files.lst
del Remove-InGameCC.bat
GOTO :end

:noFileList
ECHO InGameCC file list not found
PAUSE

:end