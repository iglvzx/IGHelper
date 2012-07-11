#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

; Control Panel\Appearance and Personalization\Personalization\Desktop Background
Run, % "control /name Microsoft.Personalization /page pageWallpaper"

; Color
WinWaitActive, Desktop Background
Send, {Left}{Enter}

ExitApp
