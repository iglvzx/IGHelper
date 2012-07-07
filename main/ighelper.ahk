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

; Control Panel ----------------------------------------------------------------
#Tab::
    KeyWaitWin()
    KeyWait, Tab
    Feedback("Win + Tab", "Task Manager")
    Run, control\task_manager.ahk
    return

#v::
    KeyWaitWin()
    KeyWait, v
    Feedback("Win + V", "Volume Control")
    Run, control\volume.ahk
    return

; Explorer ---------------------------------------------------------------------
#h::
    KeyWaitWin()
    Keywait, h
    Feedback("Win + H", "Home")
    Run, explorer\home.ahk
    return

; Firefox ----------------------------------------------------------------------
#f::
    KeyWaitWin()
    KeyWait, f
    Feedback("Win + F", "Firefox")
    Run, firefox\activate.ahk
    return

#^f::
    KeyWaitWin()
    KeyWait, Ctrl
    KeyWait, f
    Feedback("Win + Ctrl + F", "Firefox Profile Manager")
    Run, firefox\profile_manager.ahk
    return

; Notepad++ --------------------------------------------------------------------
#n::
    KeyWaitWin()
    KeyWait, n
    Feedback("Win + N", "Notepad++")
    Run, notepadpp\activate.ahk
    return
