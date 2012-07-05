#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

WinActivate, Program Manager
ControlClick, X0 Y0, Program Manager

; View > Show desktop icons
SendInput, {AppsKey}
SendInput, vd

ExitApp
