#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

WinGetPos, x, y, width, height, A
MsgBox, , Window, Size: %width% x %height%`nPosition: (%x%`, %y%)

ExitApp
