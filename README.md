# osx-cli ![License][license-img] [![Build Status][build-img]][build-url] ![Yosemite][10-10-img] ![El Capitan][10-11-img] ![Sierra][10-12-img]

- [System Integrity Protection](#system-integrity-protection)
- [Crash Reporter](#crash-reporter)
- [Dashboard](#dashboard)
- [Disks](#disks)
- [DNS](#dns)
- [Finder](#finder)
- [Homebrew](#homebrew)
- [Locate](#locate)
- [Metadata](#metadata)
- [Notifications](#notifications)
- [Photos](#photos)
- [Preview](#preview)
- [Screen capture](#screen-capture)
- [Software update](#software-update)
- [Spotlight](#spotlight)

# Disclaimer

Read carefully the manual before using any commands on OS X.

```bash
$ man man
$ man csrutil
$ man sudo
$ man defaults
```

# System Integrity Protection

For El Capitan (macOS 10.11) and Sierra (macOS 10.12), you need to understand and disable [System Integrity Protection](https://en.wikipedia.org/wiki/System_Integrity_Protection "Wikipedia") before continuing this guide.

- Power on your Mac and hold down the CMD + R keys to access the Recovery Partition.
- From the Recovery Partition, click Utilities from the menu bar, and then select Terminal.
- Enter the following command into Terminal and press Enter to execute it:
```bash
$ csrutil disable
```
- Once the command has executed, exit the Terminal and reboot. When you log back into OS X, SIP will be disabled.

# Crash Reporter

### Disable Crash Reporter

```bash
$ defaults write com.apple.CrashReporter DialogType -string 'none'
```

### Show Crash Reporter in Notifications

```bash
$ defaults write com.apple.CrashReporter UseUNC -bool true
```

# Dashboard

### Disable Dashboard

```bash
$ defaults write com.apple.Dashboard mcx-disabled -boolean true
```

# Disks

```bash
$ man diskutil
$ man fs_usage
$ man hdiutil
$ man pmset
$ man tmutil
```

### Disable Sudden Motion Sensor (SMS) for SSD

Read [this](https://en.wikipedia.org/wiki/Sudden_Motion_Sensor "Wikipedia") ([french](https://fr.wikipedia.org/wiki/Sudden_Motion_Sensor "Wikipedia")) article to understand SMS.

```bash
$ pmset -a sms 0
```

### Disable local Time Machine snapshots

```bash
$ tmutil disablelocal
```

# DNS

### Flush dns cache

```bash
$ dscacheutil -flushcache
```

# Finder

```bash
$ man chflags
```

### Show folder

```bash
$ chflags nohidden ~/Library
```

### Hide folder

```bash
$ chflags hidden ~/Public
```

### Show hidden files

```bash
$ defaults write com.apple.Finder AppleShowAllFiles -bool true
```

### Show absolute path in title

```bash
$ defaults write com.apple.Finder _FXShowPosixPathInTitle -bool true
```

### Show 'Path Bar'

```bash
$ defaults write com.apple.Finder ShowPathbar -bool true
```

### Show 'Status Bar'

```bash
$ defaults write com.apple.Finder ShowStatusBar -bool true
```

### Disable file extension change warning

```bash
$ defaults write com.apple.Finder FXEnableExtensionChangeWarning -bool false
```

### Expand save panel by default

```bash
$ defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
$ defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
```

### Expand print panel by default

```bash
$ defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
$ defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true
````

### Save to disk instead of iCloud by default

```bash
$ defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
```

### Show all extensions

```bash
$ defaults write NSGlobalDomain AppleShowAllExtensions -bool true
```

### Disable smart quotes

```bash
$ defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
```

### Disable smart dashes

```bash
$ defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
```

### Show scrollbars 

Choose between : 'WhenScrolling', 'Automatic' or 'Always'

```bash
$ defaults write NSGlobalDomain AppleShowScrollBars -string 'Always'
```

# Homebrew

Homepage : http://brew.sh/

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew update
```

# Locate

```bash
$ man launchctl
```

### Enable locate

```bash
$ launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
```

# Metadata

Read [this](https://en.wikipedia.org/wiki/.DS_Store "Wikipedia") ([french](https://fr.wikipedia.org/wiki/.DS_Store "Wikipedia")) article to understand .DS_Store.

### Disable the creation of .DS_Store on network volumes

```bash
$ defaults write com.apple.DesktopServices DSDontWriteNetworkStores true
```

### Disable the creation of .DS_Store on USB volumes

```bash
$ defaults write com.apple.DesktopServices DSDontWriteUSBStores true
```

# Notifications

### Disable Notifications

```bash
$ launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
```

# Photos

### Disable automatic opening

```bash
$ defaults write com.apple.ImageCapture disableHotPlug -bool true
```

# Preview

### Disable auto-restore

```bash
$ defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false
```

# Screen capture

### Change the location of the screenshot

```bash
$ defaults write com.apple.ScreenCapture location ~/Pictures/
```

### Change the format of the screenshot

```bash
$ defaults write com.apple.ScreenCapture type jpg
```

### Disable shadow in screenshot

```bash
$ defaults write com.apple.ScreenCapture disable-shadow -bool true
```

# Software update

```bash
$ man softwareupdate
```

### List software updates

```bash
$ softwareupdate --list
```

### Install software updates

```bash
$ softwareupdate --install --all
```

### Check software update daily

```bash
$ defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
```

# Spotlight

```bash
$ man mdutil
```

### Disable indexing of a volume

```bash
$ mdutil -i off /path/to/volume
```

### Enable indexing of a volume

```bash
$ mdutil -i on /path/to/volume
```

# Ubuntu

This is a very short version of [this](http://www.ubuntu.com/download/desktop/create-a-usb-stick-on-mac-osx "Ubuntu") article.

```bash
$ hdiutil convert -format UDRW -o /path/to/target.img /path/to/ubuntu.iso
$ diskutil list
$ diskutil unmountDisk /dev/diskN
$ sudo dd if=/path/to/target.img of=/dev/rdiskN bs=1m
$ diskutil eject /dev/diskN
```

# Millipede

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

[license-img]: https://img.shields.io/badge/license-ISC-blue.svg
[build-img]: https://travis-ci.org/rockyluke/osx-cli.svg?branch=master
[build-url]: https://travis-ci.org/rockyluke/osx-cli
[10-10-img]: https://img.shields.io/badge/osx-10.10-green.svg
[10-11-img]: https://img.shields.io/badge/osx-10.11-green.svg
[10-12-img]: https://img.shields.io/badge/osx-10.12-green.svg
