#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

Process, Exist, firefox.exe
if (ErrorLevel = 0)
{
    Run, % Program_Files_x86 . "\Mozilla Firefox\firefox.exe"
}
else
{
    WinActivate, ahk_pid %ErrorLevel%
}

ExitApp
