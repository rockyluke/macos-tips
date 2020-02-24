#!/bin/sh

# Copyright (c) 2016-2020, rockyluke <rockyluke@offline.net>
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

# https://developer.apple.com/opensource/
# https://github.com/apple
# https://www.apple.com/opensource/

# Ask for the administrator password
sudo -v

# com.apple.Dashboard
defaults write com.apple.Dashboard mcx-disabled -bool true

# com.apple.DesktopServices
defaults write com.apple.DesktopServices DSDontWriteNetworkStores -bool true
defaults write com.apple.DesktopServices DSDontWriteUSBStores -bool true

# com.apple.Dock
defaults write com.apple.Dock autohide -bool true
defaults write com.apple.Dock autohide-delay -float 0
defaults write com.apple.Dock autohide-time-modifier -float 0
defaults write com.apple.Dock launchanim -bool false
defaults write com.apple.Dock mineffect -string "genie"
defaults write com.apple.Dock minimize-to-application -bool true
defaults write com.apple.Dock show-process-indicators -bool true
killall Dock

# com.apple.Finder
defaults write com.apple.Finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.Finder FXEnableRemoveFromICloudDriveWarning -bool false
defaults write com.apple.Finder FXICloudDriveDeclinedUpgrade -bool false
defaults write com.apple.Finder FXICloudDriveDesktop -bool false
defaults write com.apple.Finder FXICloudDriveDocuments -bool false
defaults write com.apple.Finder FXICloudDriveEnabled -bool true
defaults write com.apple.Finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.Finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.Finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.Finder ShowPathbar -bool true
defaults write com.apple.Finder ShowPreviewPane -bool false
defaults write com.apple.Finder ShowRecentTags -bool false
defaults write com.apple.Finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.Finder ShowSidebar -bool true
defaults write com.apple.Finder ShowStatusBar -bool true
defaults write com.apple.Finder ShowTabView -bool false
defaults write com.apple.Finder _FXShowPosixPathInTitle -bool true

# com.apple.ImageCapture
defaults write com.apple.ImageCapture disableHotPlug -bool true

# com.apple.Preview
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false

# com.apple.ScreenCapture
defaults write com.apple.ScreenCapture disable-shadow -bool true
defaults write com.apple.ScreenCapture location -string "${HOME}/Pictures/"
defaults write com.apple.ScreenCapture type -string "png"

# NSGlobalDomain
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# finder
chflags nohidden ~/Library
chflags hidden ~/Public

# locate
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
# EOF
