@ECHO OFF

:: Cambiar "Picker" a "PartyPack"
CD ".\Main\games"
RENAME "Picker" "PartyPack"
:: Copiar y pegar "ArchivosEGSySwitch"
CD ..
CD ..
xcopy "ArchivosEGSySwitch" "Main" /s /y
:: Hacer versión EGS y Switch en JPP7-ES-EGS-MS-SWITCH.zip
CD "Main"
DEL "jbg.config.jet"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP7-ES-EGS-MS-SWITCH.zip" "."
:: Copiar y pegar "ArchivosMacEGS"
CD ..
xcopy "ArchivosMacEGS" "Main" /s /y
CD "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP7-ES-MAC-EGS.zip" "."
:: Eliminar archivos Mac EGS
DEL "PauseContent.swf" /s
RD ".\games\BlankyBlank\TalkshowExport\project\media" /q /s
DEL ".\games\BlankyBlank\BlatherHost.bank" /s
DEL ".\games\BlankyBlank\BlatherMusic.bank" /s
DEL ".\games\BlankyBlank\BlatherMusic.strings.bank" /s
DEL ".\games\Everyday\menu.jet" /s
DEL ".\games\JackboxTalks\swf\talks_tutorial.swf" /s
DEL ".\games\WorldChampions\WCSFX.bank" /s
:: Cambiar "PartyPack" a "Picker"
CD ".\games"
RENAME "PartyPack" "Picker"
:: Copiar y pegar "ArchivosSteam"
CD ..
CD ..
xcopy "ArchivosSteam" "Main" /s /y
:: Hacer versión Steam en JPP7-ES.zip
CD "Main"
DEL "config.jet"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP7-ES.zip" "."