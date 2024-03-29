# macos-tips

1. [Disclaimer](#disclaimer)
1. [Crash Reporter](#crash-reporter)
1. [Dashboard](#dashboard)
1. [Disks](#disks)
1. [DNS](#dns)
1. [Dock](#dock)
1. [Finder](#finder)
1. [Homebrew](#homebrew)
1. [Hostname](#hostname)
1. [Launchpad](#launchpad)
1. [Locate](#locate)
1. [Metadata](#metadata)
1. [Notifications](#notifications)
1. [Photos](#photos)
1. [Preview](#preview)
1. [Screen capture](#screen-capture)
1. [Software update](#software-update)
1. [Spotlight](#spotlight)
1. [System Integrity Protection](#system-integrity-protection)
1. [Miscellaneous](#miscellaneous)

## Disclaimer

Please read carefully the manual before using any commands on macsOS.

```bash
man man
man csrutil
man scutil
man sudo
man defaults
```

## Crash Reporter

### Disable Crash Reporter

```bash
defaults write com.apple.CrashReporter DialogType -string 'none'
```

### Show Crash Reporter in Notifications

```bash
defaults write com.apple.CrashReporter UseUNC -bool true
```

## Dashboard

### Disable Dashboard

```bash
defaults write com.apple.Dashboard mcx-disabled -boolean true
```

## Disks

```bash
man diskutil
man fs_usage
man hdiutil
man pmset
man tmutil
```

### Disable Sudden Motion Sensor (SMS) for SSD

Read                 [this](https://en.wikipedia.org/wiki/Sudden_Motion_Sensor)
([french](https://fr.wikipedia.org/wiki/Sudden_Motion_Sensor))    article    to
understand SMS.

```bash
pmset -a sms 0
```

### Disable local Time Machine snapshots

```bash
tmutil disablelocal
```

## DNS

### Flush dns cache

```bash
dscacheutil -flushcache
```

## Dock

![Docker][dock]

### Automaticaly hide and show the Dock (true / false)

```bash
defaults write com.apple.Dock autohide -bool true
```

### Automaticaly hide and show the Dock time (in ms)

```bash
defaults write com.apple.Dock autohide-delay -float 0
```

### Automaticaly hide and show the Dock delay (in ms)

```bash
defaults write com.apple.Dock autohide-time-modifier -float 0
```

### Animame opening application (true / false)

```bash
defaults write com.apple.Dock launchanim -bool false
```

### Minimize windows using (genie / scale)

```bash
defaults write com.apple.Dock mineffect -string "genie"
```

### Minimize windows into application icon (true / false)

```bash
defaults write com.apple.Dock minimize-to-application -bool true
```

### Show indicators for open applications (true / false)

```bash
defaults write com.apple.Dock show-process-indicators -bool true
```

## Finder

```bash
man chflags
```

### Show folder

```bash
chflags nohidden ~/Library
```

### Hide folder

```bash
chflags hidden ~/Public
```

### Show hidden files

```bash
defaults write com.apple.Finder AppleShowAllFiles -bool true
```

### Show absolute path in title

```bash
defaults write com.apple.Finder _FXShowPosixPathInTitle -bool true
```

### Show 'Path Bar'

```bash
defaults write com.apple.Finder ShowPathbar -bool true
```

### Show 'Status Bar'

```bash
defaults write com.apple.Finder ShowStatusBar -bool true
```

### Disable file extension change warning

```bash
defaults write com.apple.Finder FXEnableExtensionChangeWarning -bool false
```

### Expand save panel by default

```bash
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
```

### Expand print panel by default

```bash
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true
```

### Save to disk instead of iCloud by default

```bash
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
```

### Show all extensions

```bash
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
```

### Disable smart quotes

```bash
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
```

### Disable smart dashes

```bash
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
```

### Show scrollbars

Choose between : 'WhenScrolling', 'Automatic' or 'Always'

```bash
defaults write NSGlobalDomain AppleShowScrollBars -string 'Always'
```

## Homebrew

Homepage: [brew.sh](http://brew.sh/)

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew upgrade
brew tap rockyluke/devops
brew upgrade
```

## Hostname

```bash
scutil --set ComputerName <HOSTNAME>
scutil --set HostName <HOSTNAME>
scutil --set LocalHostName <HOSTNAME>
```

## Launchpad

### Reset to default order

```bash
defaults write com.apple.dock ResetLaunchPad -bool true
killall Dock
```

## Locate

```bash
man launchctl
```

### Enable locate

```bash
launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
```

## Metadata

Read                            [this](https://en.wikipedia.org/wiki/.DS_Store)
([french](https://fr.wikipedia.org/wiki/.DS_Store))   article   to   understand
.DS_Store.

### Disable the creation of .DS_Store on network volumes

```bash
defaults write com.apple.DesktopServices DSDontWriteNetworkStores true
```

### Disable the creation of .DS_Store on USB volumes

```bash
defaults write com.apple.DesktopServices DSDontWriteUSBStores true
```

## Notifications

### Disable Notifications

```bash
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
```

## Photos

### Disable automatic opening

```bash
defaults write com.apple.ImageCapture disableHotPlug -bool true
```

## Preview

### Disable auto-restore

```bash
defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false
```

## Screen capture

### Change the location of the screenshot

#### macOS 10

```bash
defaults write com.apple.ScreenCapture location -string "${HOME}/Documents/Screenshots"
```

#### macOS 11+

```bash
defaults write com.apple.screencapture location ${HOME}/Documents/Screenshots
``` 

### Change the format of the screenshot

#### macOS 10

```bash
defaults write com.apple.ScreenCapture type -string "jpg"
```

#### macOS 11+

```bash
defaults write com.apple.ScreenCapture type png
```

### Disable shadow in screenshot

```bash
defaults write com.apple.ScreenCapture disable-shadow -bool true
```

## Software update

```bash
man softwareupdate
```

### List software updates

```bash
softwareupdate --list
```

### Install software updates

```bash
softwareupdate --install --all
```

### Check software update daily

```bash
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
```

## Spotlight

```bash
man mdutil
```

### Rebuild database

```bash
mdutil -E /path/to/volume
```

### Disable indexing of a volume

```bash
mdutil -i off /path/to/volume
```

### Enable indexing of a volume

```bash
mdutil -i on /path/to/volume
```

## System Integrity Protection

You  need   to  understand   [System  Integrity   Protection][sip-href]  before
continuing this section.

- Power  on your  Mac and hold  down the CMD  + R  keys to access  the Recovery
  Partition.
- From  the Recovery  Partition, click  Utilities from the  menu bar,  and then
  select Terminal.
- Enter the following command into Terminal and press Enter to execute it:

```bash
csrutil disable
```

- Once  the command has  executed, exit the Terminal  and reboot. When  you log
  back into macOS, SIP will be disabled.

## Ubuntu

This         is         a         very         short         version         of
[this](http://www.ubuntu.com/download/desktop/create-a-usb-stick-on-mac-osx)
article.

```bash
hdiutil convert -format UDRW -o /path/to/target.img /path/to/ubuntu.iso
diskutil list
diskutil unmountDisk /dev/diskN
sudo dd if=/path/to/target.img of=/dev/rdiskN bs=1m
diskutil eject /dev/diskN
```

## Miscellaneous

```
    ╚⊙ ⊙╝
  ╚═(███)═╝
 ╚═(███)═╝
╚═(███)═╝
 ╚═(███)═╝
  ╚═(███)═╝
   ╚═(███)═╝
```

- [developer.apple.com/opensource](https://developer.apple.com/opensource/)
- [github.com/apple](https://github.com/apple)
- [www.apple.com/opensource](https://www.apple.com/opensource/)

[dock]: images/Dock.png
