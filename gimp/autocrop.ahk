#NoTrayIcon
#Include %A_ScriptDir%\..
#Include share\config.ahk

SendInput, !ic ; Image > Crop to Selection
SendInput, !ie ; Image > AutoCrop Image

ExitApp
