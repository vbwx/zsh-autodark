# if [[ "$(uname -s)" == "Darwin" ]]; then
	if [[ $(defaults read -g AppleInterfaceStyle 2> /dev/null) == Dark ]]; then
		osascript -e 'tell application "Terminal"
			repeat with t in tabs of windows
				set n to name of current settings of t
				if n is equal to "'$LIGHT_THEME'" then
					set current settings of t to settings set "'$DARK_THEME'"
				end if
			end repeat
		end tell'
	else
		osascript -e 'tell application "Terminal"
			repeat with t in tabs of windows
				set n to name of current settings of t
				if n is equal to "'$DARK_THEME'" then
					set current settings of t to settings set "'$LIGHT_THEME'"
				end if
			end repeat
		end tell'
	fi
# fi
