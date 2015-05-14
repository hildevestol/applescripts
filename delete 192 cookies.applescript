activate application "Safari"
delay 1
tell application "System Events"
	tell process "Safari"
		keystroke "," using command down
		delay 1
		tell window 1
			click button "Privacy" of toolbar 1
			delay 1
			click button "Details…" of group 1 of group 1
			try
				keystroke "192"
				delay 1
				select row 1 of table 1 of scroll area 1 of sheet 1
				click button "Remove" of sheet 1
			end try
			click button "Done" of sheet 1
		end tell
	end tell
end tell