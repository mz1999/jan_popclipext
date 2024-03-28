tell application "System Events"
	set isRunning to (exists (processes where name is "Jan"))
end tell

if not isRunning then
	tell application "Jan"
		reopen
        delay 1
	end tell
end if

tell application "System Events"
	keystroke "j" using {command down}
end tell