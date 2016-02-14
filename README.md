# osx-cli ![License badge][license-img]

# Software Update

## List and install all available software updates

```bash
$ softwareupdate --help
$ softwareupdate --list
$ softwareupdate --install --all
```

## Set software update check daily instead of weekly

```bash
$ defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
```

# Spotlight

```bash
$ mdutil --help
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
