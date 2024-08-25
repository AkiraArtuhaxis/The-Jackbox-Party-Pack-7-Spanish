@ECHO OFF

:: Cambiar "Picker" a "PartyPack"
CD ".\Main\games"
RENAME "Picker" "PartyPack"
:: Copiar y pegar "ArchivosEGSySwitch"
CD ..
CD ..
xcopy "ArchivosEGSySwitch" "Main" /s /y
:: Hacer versión EGS y Switch en CursedPointsES-CapyV2-ES-EGS-MS-SWITCH.zip
CD "Main"
DEL "jbg.config.jet"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../Zips/CursedPointsES-CapyV2-ES-EGS-MS-SWITCH.zip" "."
:: Copiar y pegar "ArchivosMacEGS"
CD ..
xcopy "ArchivosMacEGS" "Main" /s /y
CD "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../Zips/CursedPointsES-CapyV2-ES-MAC-EGS.zip" "."
:: Eliminar archivos Mac EGS
DEL "PauseContent.swf" /s
DEL ".\games\JackboxTalks\swf\talks_tutorial.swf" /s
:: Cambiar "PartyPack" a "Picker"
CD ".\games"
RENAME "PartyPack" "Picker"
:: Copiar y pegar "ArchivosSteam"
CD ..
CD ..
xcopy "ArchivosSteam" "Main" /s /y
:: Hacer versión Steam en CursedPointsES-CapyV2-ES.zip
CD "Main"
DEL "config.jet"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../Zips/CursedPointsES-CapyV2-ES.zip" "."