function () {
	# if [[ "$(uname -s)" == "Darwin" ]] {
		if [[ $FORCE_DARK_THEME == true ||
			(-z $FORCE_DARK_THEME && $(defaults read -g AppleInterfaceStyle 2> /dev/null) == "Dark") ]] {
			local oldtheme=$LIGHT_THEME newtheme=$DARK_THEME
		} else {
			local oldtheme=$DARK_THEME newtheme=$LIGHT_THEME
		}
		osascript -e 'tell application "Terminal"
			if it is running then
				repeat with t in tabs of windows
					set n to name of current settings of t
					if n is equal to "'$oldtheme'" then
						set current settings of t to settings set "'$newtheme'"
					end if
				end repeat
			end if
		end tell'
	# }
}
