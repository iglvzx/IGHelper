Feedback(title, text)
{
    TrayTip, %title%, %text%
    return
}

KeyWaitWin()
{
    KeyWait, LWin
    KeyWait, RWin
    return
}

GetHotkeyList()
{
    RunWait, feedback.cmd, %A_ScriptDir%

    FileRead, text, main\output.txt

    StringReplace, text, text, `r`n---------- IGHELPER.AHK`r`n
    StringReplace, text, text, % "    Feedback", , All
    StringReplace, text, text, `(`", , All
    StringReplace, text, text, `"`), , All
    StringReplace, text, text, `"`, `", ` `:` , All
    
    FileDelete, main\output.txt
    
    return text
}
