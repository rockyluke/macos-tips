# osx-cli ![License][license-img] ![Yosemite][10-10-img] ![El Capitan][10-11-img]

/!\ DISCLAIMER /!\

- [www.apple.com/opensource](https://www.apple.com/opensource/)
- [developer.apple.com/opensource](https://developer.apple.com/opensource/)
- [github.com/apple](https://github.com/apple)

```bash
$ man man
$ man defaults
```

# Software update

### List and install all available software updates

```bash
$ man softwareupdate
$ softwareupdate --list
$ softwareupdate --install --all
```

### Check software update daily

```bash
$ defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
```

# Disks, filesystem and volumes

```bash
$ man diskutil
$ man hdiutil
$ man pmset
$ man fs_usage
```

### Disable Sudden Motion Sensor (SMS) for SSD

Read [this](https://en.wikipedia.org/wiki/Sudden_Motion_Sensor "Wikipedia") ([french](https://fr.wikipedia.org/wiki/Sudden_Motion_Sensor "Wikipedia")) article to understand SMS.

```bash
$ pmset -a sms 0
```

# Screen capture

### Change location of screen capture

```bash
$ defaults write com.apple.screencapture location ~/Pictures/
$ killall SystemUIServer
```

### Change format of screen capture

```bash
$ defaults write com.apple.screencapture type jpg
$ killall SystemUIServer
```

# Metadata

Read [this](https://en.wikipedia.org/wiki/.DS_Store "Wikipedia") ([french](https://fr.wikipedia.org/wiki/.DS_Store "Wikipedia")) article to understand .DS_Store.

### Disable the creation of .DS_Store on network volumes

```bash
$ defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
```

### Disable the creation of .DS_Store on USB volumes

```bash
$ defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
```

# Spotlight

```bash
$ man mdutil
```

```bash
$ mdutil -i on /path/to/volume
```

```bash
$ mdutil -i on /path/to/volume
```

# Homebrew

http://brew.sh/

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew update
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
````

### Expand save panel by default

```bash
$ defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
```

### Disable file extension change warning

```bash
$ defaults write com.apple.Finder FXEnableExtensionChangeWarning -bool false
```

### Show absolute path in title bar

```bash
$ defaults write com.apple.Finder _FXShowPosixPathInTitle -bool true
```

### Show path bar

```bash
$ defaults write com.apple.Finder ShowPathbar -bool true
```

### Show status bar

```bash
$ defaults write com.apple.Finder ShowStatusBar -bool true
```

# Preview

### Disable auto-restore

```bash
$ defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -bool false
```

# Dashboard

### Disable OSX dashboard

```bash
$ defaults write com.apple.Dashboard mcx-disabled -boolean true
```

# Locate

### Enable locate

```bash
$ launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
```

# Photos

### Disable automatic opening

```bash
$ defaults write com.apple.ImageCapture disableHotPlug -bool true
```

# Crash Reporter

### Show in Notifications

```bash
$ defaults write com.apple.CrashReporter UseUNC 1
```

# DNS

### Flush dns cache

```bash
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

[license-img]: https://img.shields.io/badge/license-ISC-blue.svg
[10-10-img]: https://img.shields.io/badge/osx-10.10-green.svg
[10-11-img]: https://img.shields.io/badge/osx-10.11-green.svg
