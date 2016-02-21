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

# https://www.apple.com/opensource/
# https://developer.apple.com/opensource/
# https://github.com/apple

# Ask for the administrator password
# sudo -v

# Show Crash Reporter in Notifications
defaults write com.apple.CrashReporter UseUNC -bool true

# Disable Dashboard
defaults write com.apple.Dashboard mcx-disabled -boolean true

# Show absolute path in title
defaults write com.apple.Finder _FXShowPosixPathInTitle -bool true

# Show 'Status Bar'
defaults write com.apple.Finder ShowStatusBar -bool true

# Disable file extension change warning
defaults write com.apple.Finder FXEnableExtensionChangeWarning -bool false

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save to disk instead of iCloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic opening in Photos
defaults write com.apple.ImageCapture disableHotPlug -bool true

# Disable creation of .DS_Store
defaults write com.apple.DesktopServices DSDontWriteNetworkStores true
defaults write com.apple.DesktopServices DSDontWriteUSBStores true

# Change the location of the screenshot
defaults write com.apple.ScreenCapture location ~/Pictures/

# Check software update daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Disable auto-restore in Preview
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false
# EOF
