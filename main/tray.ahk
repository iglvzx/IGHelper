SetWorkingDir, %A_ScriptDir%\..

Menu, Tray, Icon, icon\active.ico
Menu, Tray, Tip, IGHelper ©2012 Izzy Galvez
Menu, Tray, NoStandard
Menu, Tray, Add, &About, AboutCommand
Menu, Tray, Add, &Help, HelpCommand
Menu, Tray, Add
Menu, Tray, Add, &Suspend, SuspendCommand
Menu, Tray, Add, &Refresh, RefreshCommand
Menu, Tray, Add, &Quit, QuitCommand
return

AboutCommand:
    Run, % "https://github.com/iglvzx/IGHelper"
    return

HelpCommand:
    MsgBox, , IGHelper: Help, % GetHotkeyList()
    return

SuspendCommand:
    Menu, Tray, ToggleCheck, &Suspend
    Suspend, Toggle
    if (A_IsSuspended)
    {
        Menu, Tray, Icon, icon\suspended.ico, , 1
    }
    else
    {
        Menu, Tray, Icon, icon\active.ico
    }
    return
    
RefreshCommand:
    Run, main\ighelper.ahk
    return

QuitCommand:
    ExitApp
