#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

Run, % Program_Files_x86 . "\Mozilla Firefox\firefox.exe -ProfileManager -no-remote"

ExitApp
