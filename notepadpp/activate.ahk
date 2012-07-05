#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

Process, Exist, notepad++.exe
if (ErrorLevel = 0)
{
    Run, % Program_Files_x86 . "\Notepad++\notepad++.exe"
    
    ; Resize window to 80 columns (DejaVu Sans Mono, 10pt)
    WinWaitActive, Notepad\+\+$
    WinMove, A, , , , 746
}
else
{
    WinActivate, ahk_pid %ErrorLevel%
}

ExitApp
