# osx-cli ![License badge][license-img]

1. [Software Update](#software-update)
2. [Volumes and Disks](#volumes-and-disks)
3. [Spotlight](#spotlight)
4. [Homebrew](#homebrew)
5. [Screen Capture](#screen-capture)

# Software Update

## List and install all available software updates

```bash
$ man softwareupdate
$ softwareupdate --list
$ softwareupdate --install --all
```

## Set software update check daily instead of weekly

```bash
$ man defaults
$ defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
```

# Volumes and Disks

```bash
$ man pmset
```

## Disable Sudden Motion Sensor (SMS) for SSD

Read [this](https://en.wikipedia.org/wiki/Sudden_Motion_Sensor "Wikipedia") (or [french](https://fr.wikipedia.org/wiki/Sudden_Motion_Sensor "Wikipedia")) article to understand SMS.

```bash
$ pmset -a sms 0
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
