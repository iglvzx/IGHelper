#SingleInstance Force
#NoEnv
#Include %A_ScriptDir%\..
#Include share\functions.ahk

; Optimizations ----------------------------------------------------------------
SetBatchLines, -1
SetMouseDelay, -1
SetControlDelay, -1
SetWinDelay, -1
SetTitleMatchMode, RegEx
AutoTrim, On

; Environment Variables --------------------------------------------------------
Drive := "C:"
Username := "iglvzx"
User_Profile := Drive . "\Users\" . Username
Program_Files := Drive . "\Program Files"
Program_Files_x86 := Program_Files . " (x86)"
