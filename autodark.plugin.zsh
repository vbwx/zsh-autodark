# if [[ "$(uname -s)" == "Darwin" ]]; then
	if [[ $(defaults read -g AppleInterfaceStyle 2> /dev/null) == Dark ]]; then
		osascript -e 'tell application "Terminal"
			set current settings of tabs of windows to settings set "'$DARK_THEME'"
		end tell'
	fi
# fi
