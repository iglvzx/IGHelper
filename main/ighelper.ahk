SetWorkingDir, %A_ScriptDir%\..
#Include %A_ScriptDir%\..
#Include share\config.ahk

#/::
    KeyWaitWin()
    Keywait, `/
    Feedback("Win + /", "Show Hotkeys")
    MsgBox, , IGHelper: Hotkeys, % GetHotkeyList()
    return

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