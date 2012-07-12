#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

Run, truecrypt\activate.ahk

WinWaitActive, ^TrueCrypt$

; Volumes > Dismount All Mounted Volumes
SendInput, {Alt}v
SendInput, {Down 8}
SendInput, {Enter}

WinClose, ^TrueCrypt$

ExitApp
