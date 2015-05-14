set work to ["WorkAccount1", "WorkAccount2"]
set private to ["PrivateAccount1", "PrivateAccount2", "PrivateAccount3"]
set otherAccounts to ["OtherAccount1", "OtherAccount2", "OtherAccount3"]

tell application "Mail"
	(choose from list {"work", "private", "other"} default items "work" OK button name "Ok" with prompt "Choose account type" with title "Enable disable account group" with multiple selections allowed)
	set accountTypes to result
	if accountTypes is false then return
	
	(choose from list {"enable", "disable"} default items "enable" OK button name "Ok" with prompt "Enable or disable" with title "Create Reminder from E-Mail")
	set myBool to result
	
	if myBool is false then
		return
	else if myBool as rich text is "enable" then
		set myBool to true
	else if myBool as rich text is "disable" then
		set myBool to false
	end if
	
	repeat with accountType in accountTypes
		if accountType as rich text is "work" then
			repeat with name in work
				set enabled of account name to myBool
			end repeat
		else if accountType as rich text is "private" then
			repeat with name in private
				set enabled of account name to myBool
			end repeat
		else if accountType as rich text is "other" then
			repeat with name in otherAccounts
				set enabled of account name to myBool
			end repeat
		end if
	end repeat
end tell
