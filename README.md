<p align="center"> <img src="https://github.com/TrueCrimeAudit/AutoCline/blob/main/Clint.png" alt="AutoCline Logo"> </p> <h1 align="center">AutoCline</h1>
<h3 align="center">Automate your VS Code by bugging our good friend, Cline!</h3>

## Overview

AutoCline is an AutoHotkey script designed to streamline your coding experience in Visual Studio Code by automating button presses. The script automatically clicks specified buttons every 5 seconds, saving you from repetitive tasks and boosting productivity. You can suspend or resume the automation with a simple hotkey (Ctrl + Alt + S) or trigger it manually using Ctrl + Enter.

### Features

- Automated Button Pressing: Automatically clicks designated buttons in VS Code every 5 seconds.
- Toggle Automation: Easily suspend or resume the automation with Ctrl + Alt + S.
- Manual Trigger: Manually trigger the button press anytime with Ctrl + Enter.
- Customizable: Modify the script to target different buttons as per your needs.

### Requirements

AutoHotkey
AutoHotkey is a free, open-source scripting language for Windows that allows you to automate just about anything by sending keystrokes and mouse clicks. It's perfect for creating simple to complex macros and scripts to automate repetitive tasks.

UIA.ahk
UIA.ahk is a library that wraps the UIAutomation framework, enabling automation of windows and controls that are typically challenging to manipulate with standard AutoHotkey commands.

Installation
Install AutoHotkey: Download and install the latest version of AutoHotkey from the official website.

Download UIA.ahk:

Clone or download the UIA.ahk library from its GitHub repository.
Place the UIA.ahk file in your AutoHotkey Lib folder or in the same directory as your script.
Set Up the Script:

Copy the script below into a new file with the .ahk extension.
Save the file in a convenient location.
Run the Script:

Double-click the .ahk file to run the script.
An AutoHotkey icon should appear in your system tray, indicating the script is active.
Usage
Automatic Mode: The script will start pressing the buttons every 5 seconds upon launch.
Suspend/Resume Automation: Press Ctrl + Alt + S to toggle the automation on or off. A tooltip will notify you of the current state.
Manual Trigger: Press Ctrl + Enter to execute the button press immediately.
Customization: Edit the script to change the target buttons or adjust the timer interval as needed.
