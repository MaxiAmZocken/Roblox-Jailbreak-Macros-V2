#SingleInstance, force

;------------------- Command List -------------------

; F13 = Spawn Pickup
; F14 = Switch Team (Switches Automatically to the other Team)
; F15 = Reset Player (Kill Yourself)

;------------------- Roblox Makros -------------------

GuiText =
(

Welcome to Roblox Jailbreak Macros, you need to leave this windows open while using and you can click "Exit" when you like to close it
)

;Gui
Gui, Font, s10, Comic Sans
Gui, Add, Picture, , Sources\Roblox Macro Banner.png
Gui, Add, Text ,w300 , %GuiText%
Gui, Add, Button, x5 y220 w150 h30 ggithub, Github Repo
Gui, Add, Button, x165 y220 w150 h30 gexit, Exit
Gui, Show, , Roblox Autohotkey Macros
Return

;Labels
exit:
ExitApp
return

github:
Run, "https://github.com/MaxiAmZocken/Roblox-Jailbreak-Macros-V2"
return

F13:: ;spawn pickup
MouseGetPos, xpos, ypos 
Click 132, 655
Sleep 450
Click 1246, 369
MouseMove, %xpos%, %ypos%
return

F14:: ;change team
PixelGetColor, TeamColor, 26, 452
Clipboard = %TeamColor%
MouseGetPos, xpos, ypos
Click, 44, 625 
Sleep, 600
Click, 864, 438
Sleep, 450
if (TeamColor = "0xFFCC2A") ;blue
{
    Click, 1072, 497
    Sleep, 300
    Click, 963, 712
    MouseMove, %xpos%, %ypos%
} 
else if (TeamColor = "0x317BFD") ;orange
{
    Click, 832, 486
    Sleep, 300
    Click, 963, 712
    MouseMove, %xpos%, %ypos% 
}
else
{
    MsgBox, Wrong color, color = %TeamColor%
}
return

F15:: ;reset player
Send, {Esc}
Sleep, 300
Send, r
Sleep, 300
Send, {Enter}
return

F16:: ;close game
WinActivate, ahk_exe RobloxPlayerBeta.exe
Send, !{F4}
return

F17:: ;buy ak47, pumpgun and sniper
MouseGetPos, xpos, ypos
MouseMove, 1071, 558
Loop, 3
{
    Send, {WheelDown}{WheelDown}
    Sleep, 50
}
Click, 1309, 712
Click, 756, 705
Loop, 6
{
    Send, {WheelDown}{WheelDown}
    Sleep, 50
}
Click, 1326, 705
Click, 552, 360
return