#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#MaxThreadsPerHotkey 2

Gui, Font, s14 CDefault Arial
Gui, add, text, x2 y9 w40 h40 , Key
Gui, add, button, x152 y59 w100 h70 , Confirm
Gui, add, hotkey, ym vF6Replace x42 y9 w100 h40, Enter
Gui, add, text, x242 y9 w50 h40, Time
Gui, add, Edit, vF6Timer Number x292 y9 w90 h40, %F6Timer%
Gui, add, button, x2 y139 w100 h50 , Cancel
Gui, add, button, x272 y139 w110 h50 , Exit
Gui, Font
Gui, show, x127 y87 h195 w389, Grinder
return

f6::
toggle:=!toggle
While toggle{
Send {%F6Replace%}
Sleep %F6Timer%
}
return

f3::
Gui, Destroy
Gui, Font, s14 CDefault Arial
Gui, add, text, x2 y9 w40 h40 , Key
Gui, add, button, x152 y59 w100 h70 , Confirm
Gui, add, hotkey, ym vF6Replace x42 y9 w100 h40, Enter
Gui, add, text, x242 y9 w50 h40, Time
Gui, add, Edit, vF6Timer Number x292 y9 w90 h40, %F6Timer%
Gui, add, button, x2 y139 w100 h50 , Cancel
Gui, add, button, x272 y139 w110 h50 , Exit
Gui, Font
Gui, show, x127 y87 h195 w389, Grinder
return

ButtonConfirm:
Gui, Submit
Gui, minimize
return

ButtonCancel:
Gui, Destroy
return

ButtonExit:
ExitApp
return

f8::ExitApp
