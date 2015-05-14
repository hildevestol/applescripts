set input to text returned of (display dialog "Enter length of timer" default answer "")
set countdown to input
repeat input times
	display dialog "Time left: " & countdown giving up after 1
	set countdown to countdown - 1
end repeat
beep