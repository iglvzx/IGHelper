#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

Process, Exist, notepad++.exe
if (ErrorLevel = 0)
{
    Run, % Program_Files_x86 . "\Notepad++\notepad++.exe"
}
else
{
    WinActivate, ahk_pid %ErrorLevel%
}

ExitApp
