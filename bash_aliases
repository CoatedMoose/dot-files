#!/bin/bash
alias chdir="cd"
alias gitk='gitk --all --date-order'
alias mvn='mvn3'
alias logcat='logcat-color'
alias dtree='tree -d'
alias histgrep='history | grep'

# find any git repo's with uncommited changes
alias find-unsynced='find . -type d -name .git -printf "%h\n" -execdir git status -s \;'

# fetch all git repos
alias git-fetch-all='find . -type d -name .git -printf "%h\n" -execdir git fetch -p \;'

# Android debug over IP helpers
alias adbip='adb shell ip -f inet addr show wlan0 | sed -En "s/.*inet ([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+).*/\1/p"'
alias adbwifi='ADB_IP=$(adbip); adb tcpip 5555 && adb connect $ADB_IP'
