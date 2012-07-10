#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk
SetWorkingDir, %A_ScriptDir%\..
Menu, Tray, Icon, icon\active.ico

WinGetClass, class, A
InputBox, void , Window, , , 132, 101, , , , , ahk_class %class%

ExitApp
