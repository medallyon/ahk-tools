# switch-output
This tool toggles between two audio devices without delay or additional interactions. On startup, this tool sets the default audio device to the device named `"Headphones"`.

## Usage
Press `WIN` + `N` to toggle the default audio source between named devices.

## Settings
The default hotkey for this tool is `WIN` + `N`. If you wish to customize this, change the hotkey in the [source](https://github.com/medallyon/ahk-tools/blob/master/switch-output/switch-output.ahk#L65).

The default device names to toggle between are `"Headphones"` and `"Speakers"`. If you wish to customize these, change the string values in the [source](https://github.com/medallyon/ahk-tools/blob/master/switch-output/switch-output.ahk#L65).

## Notes

ℹ This tool was originally discovered in [this forum answer](https://www.autohotkey.com/boards/viewtopic.php?t=49980) from the user `Flipeador`.
ℹ If this script can't find a named device to switch to, it fails silently.
⚠ The device names to toggle between are currently hard-coded. This may change in a future update.
