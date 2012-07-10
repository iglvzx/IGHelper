#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk
SetWorkingDir, %A_ScriptDir%\..
Menu, Tray, Icon, icon\active.ico

InputBox, width, Window, Width:, , 132, 120
InputBox, height, Window, Height:, , 132, 123
WinMove, A, , 0, 0, %width%, %height%

ExitApp
