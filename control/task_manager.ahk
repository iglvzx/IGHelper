#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

Process, Exist, taskmgr.exe
if (ErrorLevel = 0)
{
    Run, taskmgr
}
else
{
    WinActivate, ahk_pid %ErrorLevel%
}

ExitApp
