SetWorkingDir, %A_ScriptDir%\..
#Include %A_ScriptDir%\..
#Include share\config.ahk

#Include main\tray.ahk

#/::
    KeyWaitWin()
    Keywait, `/
    Feedback("Win + /", "Help")
    GoSub, HelpCommand
    return
    
; Desktop ----------------------------------------------------------------------
#^d::
    KeyWaitWin()
    KeyWait, Ctrl
    KeyWait, d
    Feedback("Win + Ctrl + D", "Toggle Desktop Icons")
    Run, desktop\toggle_icons.ahk
    return

; Firefox ----------------------------------------------------------------------
#f::
    KeyWaitWin()
    KeyWait, f
    Feedback("Win + F", "Activate Firefox")
    Run, firefox\activate.ahk
    return

#^f::
    KeyWaitWin()
    KeyWait, Ctrl
    KeyWait, f
    Feedback("Win + Ctrl + F", "Open Firefox Profile Manager")
    Run, firefox\profile_manager.ahk
    return