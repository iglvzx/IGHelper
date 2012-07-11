#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

Time := A_Hour . ":" . A_Min
Date := A_YYYY . "-" . A_MM . "-" . A_DD . ", " . A_DDD
Screen := A_ScreenWidth . " x " . A_ScreenHeight

MsgBox, , Status, %Time%`n%Date%`n%A_ComputerName%`n%A_IPAddress1%`n%Screen%

ExitApp
