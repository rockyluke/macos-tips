# osx-cli ![License][license-img] ![Yosemite][10-10-img] ![El Capitan][10-11-img]

/!\ DISCLAIMER /!\

# Software Update

## List and install all available software updates

```bash
$ man softwareupdate
$ softwareupdate --list
$ softwareupdate --install --all
```

## Set software update check daily

```bash
$ man defaults
$ defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
```

# Disks, Filesystems and Volumes

```bash
$ man diskutil
$ man hdiutil
$ man pmset
$ man fs_usage
```

## Disable Sudden Motion Sensor (SMS) for SSD

Read [this](https://en.wikipedia.org/wiki/Sudden_Motion_Sensor "Wikipedia") ([french](https://fr.wikipedia.org/wiki/Sudden_Motion_Sensor "Wikipedia")) article to understand SMS.

```bash
$ pmset -a sms 0
```

# Metadata

Read [this](https://en.wikipedia.org/wiki/.DS_Store "Wikipedia") ([french](https://fr.wikipedia.org/wiki/.DS_Store "Wikipedia")) article to understand .DS_Store.

## Avoid the creation of .DS_Store on network volumes

```bash
$ defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
```

## Avoid the creation of .DS_Store on USB

```bash
$ defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
```

# Spotlight

```bash
$ man mdutil
$ mdutil -i off -d /path/to/volume
$ mdutil -i on /path/to/volume
```

# Homebrew

http://brew.sh/

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew update
```

# Screen Capture

Change location and format of screen capture.

```bash
$ man defaults
$ defaults write com.apple.screencapture location ~/Pictures/
$ defaults write com.apple.screencapture type png
$ killall SystemUIServer
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