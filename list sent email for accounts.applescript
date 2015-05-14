on run
	set window_from to (current date) - (weeks * 2)
	set window_to to current date
	
	tell application "Mail"
		set results to {}
		
		set msgs to (messages of sent mailbox whose date sent ³ window_from and date sent ² window_to)
		repeat with msg in msgs
			if "@rubynor" is in (sender of msg as string) or "@hyper" is in (sender of msg as string) then
				set the end of results to {subject:subject of msg, datetime:date sent of msg, sender:sender of msg as string}
			end if
		end repeat
		
		results
	end tell
end run
