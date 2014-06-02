alias chdir="cd"
alias ack='ack-grep'
alias gitk='gitk --all --date-order'
alias mvn='mvn3'

# Android debug over IP helpers
alias adbip='adb shell ip -f inet addr show wlan0 | sed -En "s/.*inet ([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+).*/\1/p"'
alias adbwifi='ADB_IP=$(adbip); adb tcpip 5555 && adb connect $ADB_IP'
