var="/Users/$USER/sccapture/$(date "+%Y%m%d-%H%M%S").jpg"
screencapture -W -c -x -t jpg $var
echo &var#キャプチャしなかったときにこれがないとエラーになる
osascript << EOF
set jpg_data to the clipboard as JPEG picture
set the_file to open for access POSIX path of (POSIX file "$var") with write permission
write jpg_data to the_file
close access the_file
EOF
