SetWorkingDir, %A_ScriptDir%\..
#Include %A_ScriptDir%\..
#Include share\config.ahk

#Include main\tray.ahk

#/::
    KeyWaitWin()
    KeyWait, `/
    Feedback("Win + /", "Help")
    GoSub, HelpCommand
    return

#.::
    KeyWaitWin()
    KeyWait, .
    Feedback("Win + .", "Status")
    Run, main\status.ahk
    return

; Window -----------------------------------------------------------------------
#F10::
    KeyWaitWin()
    KeyWait, F10
    Feedback("Win + F10", "Get Window Class")
    Run, window\get_class.ahk
    return

#F11::
    KeyWaitWin()
    Feedback("Win + F11", "Get Window Size")
    Run, window\get_size.ahk
    return

#F12::
    KeyWaitWin()
    Feedback("Win + F12", "Set Window Size")
    Run, window\set_size.ahk
    return

; Desktop ----------------------------------------------------------------------
#+d::
    KeyWaitWin()
    KeyWait, Shift
    KeyWait, d
    Feedback("Win + Shift + D", "Toggle Desktop Icons")
    Run, desktop\toggle_icons.ahk
    return

#^d::
    KeyWaitWin()
    KeyWait, Ctrl
    KeyWait, d
    Feedback("Win + Ctrl + D", "Desktop Background: Black")
    Run, desktop\background_black.ahk
    return

#!d::
    KeyWaitWin()
    KeyWait, Alt
    KeyWait, d
    Feedback("Win + Alt + D", "Desktop Background: White")
    Run, desktop\background_white.ahk
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

; Network ----------------------------------------------------------------------
#F1::
    KeyWaitWin()
    KeyWait, F1
    Feedback("Win + F1", "Connect to IGalvez.Net")
    StaticNetwork("network\igalvez-net.ini")
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

; TrueCrypt --------------------------------------------------------------------
#t::
    KeyWaitWin()
    KeyWait, t
    Feedback("Win + T", "TrueCrypt")
    Run, truecrypt\activate.ahk
    return

#^t::
    KeyWaitWin()
    KeyWait, Ctrl
    KeyWait, t
    Feedback("Win + Crtl + T", "TrueCrypt: Dismount Volumes")
    Run, truecrypt\dismount.ahk
    return

; GIMP -------------------------------------------------------------------------
#IfWinActive – GIMP$
#x::
    KeyWaitWin()
    KeyWait, x
    Feedback("Win + X", "[GIMP] AutoCrop to Selection")
    Run, gimp\autocrop.ahk
    return
#IfWinActive
