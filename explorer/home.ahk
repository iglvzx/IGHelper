#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

IfWinNotExist, ^%Username%$
{
    Run, explorer %User_Profile%
}
else
{
    WinActivate, ^%Username%$
}

ExitApp
