#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

Run, % "sndvol -f"
WinWaitActive, ahk_class #32770
WinMove, % A_ScreenWidth - 84, % A_ScreenHeight - 305 - 48

ExitApp