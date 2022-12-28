var="$(date "+%Y%m%d-%H%M%S").jpg"
screencapture -m -c -x -t jpg "/Users/$USER/sccapture/$var"
echo "$var"

var=$1
echo $var
osascript << EOF
	tell application "Finder"
		set aRes to exists of POSIX file "/Users/$USER/sccapture/$var"
		if aRes
			set the clipboard to (read alias POSIX file "/Users/$USER/sccapture/$var" as TIFF picture)
		end if
	end tell
EOF
