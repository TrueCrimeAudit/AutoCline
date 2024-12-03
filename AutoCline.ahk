/************************************************************************
 * @description Automatically click Approve, Run Command, and Safe using CTRL + Enter  
 * @file AutoCline.ahk
 * @author A Concerned Citizen
 * @link https://github.com/TrueCrimeAudit/AutoCline/
 * @date 2024/12/02
 * @version 1.0.0
 ***********************************************************************/
#Requires Autohotkey v2
#SingleInstance Force
#Include UIA.ahk ; Requires UIA AHK v2 library by Descolada https://github.com/Descolada/UIA-v2/

TraySetIcon("Clint.png")

#HotIf WinActive("ahk_exe code.exe") 
^Enter::RunCline()
#HotIf

; Start the monitoring when script launches
CheckForButtons := true
SetTimer(MonitorButtons, 5000)  ; Check every 5 seconds

MonitorButtons() {
    global CheckForButtons
    if !CheckForButtons
        return

    if (CodeEl := UIA.ElementFromHandle("ahk_exe Code.exe")) {
        ; Try known path to Save button first
        try {
            if (SaveBtn := CodeEl.ElementFromPath({T:30}, {T:32}, {T:33}, {T:30}, {T:30}, {T:33}, {T:30}, {T:30}, {T:0, i:3})) {
                SaveBtn.Click()
                return
            }
        }
        ; Try finding Approve button
        try {
            if (ApproveBtn := CodeEl.FindElement({Name:"Approve", Type:"Button"}, 4)) {
                ApproveBtn.Click()
                return
            }
        }
        ; Try finding Run Command button 
        try {
            if (RunCmd := CodeEl.FindElement({Name:"Run Command", Type:"Button"}, 4)) {
                RunCmd.Click()
                return
            }
        }
    }
}

RunCline() {
    if (CodeEl := UIA.ElementFromHandle("ahk_exe Code.exe")) {
        ; Try known path to Save button first
        try {
            if (SaveBtn := CodeEl.ElementFromPath({T:30}, {T:32}, {T:33}, {T:30}, {T:30}, {T:33}, {T:30}, {T:30}, {T:0, i:3})) {
                SaveBtn.Click()
                return
            }
        }
        ; Try finding Approve button
        try {
            if (ApproveBtn := CodeEl.FindElement({Name:"Approve", Type:"Button"}, 4)) {
                ApproveBtn.Click()
                return
            }
        }
        ; Try finding Run Command button 
        try {
            if (RunCmd := CodeEl.FindElement({Name:"Run Command", Type:"Button"}, 4)) {
                RunCmd.Click()
                return
            }
        }
    }
}

; Add hotkey to toggle the monitoring
^!s:: {
    global CheckForButtons
    CheckForButtons := !CheckForButtons
    ToolTip(CheckForButtons ? "Button monitoring enabled" : "Button monitoring disabled")
    SetTimer(() => ToolTip(), -1000)
}

; Clean up on script exit
OnExit(*) {
    global CheckForButtons := false
}
