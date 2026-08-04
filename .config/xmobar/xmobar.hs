Config {
	font = "xft:monospace-10",
	additionalFonts = [], 
	bgColor = "#1e1e2e",
	fgColor = "#cdd64f",
	position = Top,
	lowerOnStart = True,
	hideOnStart = False,
	allDesktops = True,
	persistent = True,
	commands = [
		Run Memory ["-t", "RAM: <usedratio>%"] 10,
		Run Date "%a %b %d %H:%M" "date" 10
	],
	sepChar = "%",
	alignSep = "}{",
	template = "%date% }{ %memory%"

}

