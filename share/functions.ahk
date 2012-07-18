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

StaticNetwork(profile)
{
    IniRead, name, %profile%, profile, name
    IniRead, adapter, %profile%, profile, adapter
    IniRead, ip, %profile%, profile, ip
    IniRead, subnet, %profile%, profile, subnet
    IniRead, gateway, %profile%, profile, gateway
    IniRead, dns1, %profile%, profile, dns1
    IniRead, dns2, %profile%, profile, dns2

    command = netsh interface ip set address "%adapter%" static %ip% %subnet% %gateway%
    FileAppend, %command%`n, run.cmd

    command = ipconfig /flushdns
    FileAppend, %command%`n, run.cmd

    command = netsh interface ip set dnsservers "%adapter%" static %dns1%
    FileAppend, %command%`n, run.cmd

    command = netsh interface ip add dnsservers "%adapter%" %dns2%
    FileAppend, %command%`n, run.cmd

    command = netsh wlan connect "%name%"
    FileAppend, %command%`n, run.cmd

    RunWait, *RunAs run.cmd

    FileDelete, run.cmd
}

TextCopy()
{
    Clipboard =
    SendInput, ^c
    ClipWait
    Clipboard = %Clipboard%
    return
}

TextTrimPaste()
{
    Previous =
    
    Loop, Parse, Clipboard, `n, `r
    {
        Text = %A_LoopField%
        
        if (Text = "" && Previous != "")
        {
            SendInput, `n
        }
        else if (Text != "")
        {
            SendInput, {Raw}%Text%
            SendInput, `n
        }
        
        Previous := Text
    }
    
    SendInput, {Backspace}
    return
}