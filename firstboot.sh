#!/bin/sh

# Copyright (c) 2015, Dalenys Group
#
# Permission  to use,  copy, modify,  and/or  distribute this  software for  any
# purpose  with  or without  fee  is hereby  granted,  provided  that the  above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS"  AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO  THIS SOFTWARE INCLUDING  ALL IMPLIED WARRANTIES  OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL  THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR  CONSEQUENTIAL DAMAGES OR  ANY DAMAGES WHATSOEVER  RESULTING FROM
# LOSS OF USE, DATA OR PROFITS,  WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER  TORTIOUS ACTION,  ARISING  OUT OF  OR  IN CONNECTION  WITH  THE USE  OR
# PERFORMANCE OF THIS SOFTWARE.

function error {

    echo 'Something went wrong...'
    exit 1

} # error

function millipede {

    echo 'Everything went well.'
    cat <<EOF

    ╚⊙ ⊙╝
  ╚═(███)═╝
 ╚═(███)═╝
╚═(███)═╝
 ╚═(███)═╝
  ╚═(███)═╝
   ╚═(███)═╝

EOF

} # millipede

# Check software update daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Change location screen capture
defaults write com.apple.ScreenCapture location ~/Pictures/

# Disable creation of .DS_Store
defaults write com.apple.DesktopServices DSDontWriteNetworkStores -bool true
defaults write com.apple.DesktopServices DSDontWriteUSBStores -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Show absolute path in Finder
defaults write com.apple.Finder _FXShowPosixPathInTitle -bool true

# Show status bar in Finder
defaults write com.apple.Finder ShowStatusBar -bool true

# Disable file extension change warning
defaults write com.apple.Finder FXEnableExtensionChangeWarning -bool false

# Disable auto-restore in Preview
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false

# Disable Dashboard
defaults write com.apple.Dashboard mcx-disabled -boolean true

# Disable automatic opening in Photos
defaults write com.apple.ImageCapture disableHotPlug -bool true

# Show Crash Reporter in Notifications
defaults write com.apple.CrashReporter UseUNC 1

# Millipede
millipede
# EOF
