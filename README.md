# osx-cli ![License][license-img] ![Yosemite][10-10-img] ![El Capitan][10-11-img]

1. [Crash Reporter](#crash-reporter)
2. [Dashboard](#dashboard)
3. [Disks](#disks)
4. [DNS](#dns)
5. [Finder](#finder)
6. [Homebrew](#homebrew)
7. [Locate](#locate)
8. [Metadata](#metadata)
9. [Photos](#photos)
10. [Preview](#preview)
11. [Screen capture](#screen-capture)
12. [Software update](#software-update)
13. [Spotlight](#spotlight)

- [www.apple.com/opensource](https://www.apple.com/opensource/)
- [developer.apple.com/opensource](https://developer.apple.com/opensource/)
- [github.com/apple](https://github.com/apple)

/!\ DISCLAIMER /!\

Read carefully the manual before using any command.

```bash
$ man man
$ man defaults
```

# Crash Reporter

### Show in Notifications

```bash
$ defaults write com.apple.CrashReporter UseUNC -bool true
```

# Dashboard

### Disable OSX dashboard

```bash
$ defaults write com.apple.Dashboard mcx-disabled -boolean true
```

# Disks

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

### Expand save panel by default

```bash
$ defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
```

### Show all extensions

```bash
$ defaults write NSGlobalDomain AppleShowAllExtensions -bool true
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
$ defaults write com.apple.DesktopServices DSDontWriteNetworkStores -bool true
```

### Disable the creation of .DS_Store on USB volumes

```bash
$ defaults write com.apple.DesktopServices DSDontWriteUSBStores -bool true
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

### Change location of screen capture

```bash
$ defaults write com.apple.ScreenCapture location ~/Pictures/
$ killall SystemUIServer
```

### Change format of screen capture

```bash
$ defaults write com.apple.ScreenCapture type jpg
$ killall SystemUIServer
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

[license-img]: https://img.shields.io/badge/license-ISC-blue.svg
[10-10-img]: https://img.shields.io/badge/osx-10.10-green.svg
[10-11-img]: https://img.shields.io/badge/osx-10.11-green.svg
