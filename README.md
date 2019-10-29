# spotify-bar-plasmoid

![](resources/example.png)

A [KDE plasmoid](https://userbase.kde.org/Plasma/Plasmoids) that displays the current Spotify track info. Inspired by [SpotMenu](https://github.com/kmikiy/SpotMenu) for macOS. Designed for use in horizontal panels.

Fetches metadata from the Spotify app via [MPRIS](https://www.freedesktop.org/wiki/Specifications/mpris-spec/).

May require a custom iconset with the `spotify-indicator` icon included.

## Installation

```
git clone https://github.com/corinv/spotify-bar-plasmoid
cd spotify-bar-plasmoid
kpackagetool5 -t Plasma/Applet --install ./plasmoid
```

## Uninstallation

```
cd spotify-bar-plasmoid
kpackagetool5 -t Plasma/Applet --remove ./plasmoid
```

## TODO:
- Scrolling text
- Add play/pause button
- Add dropdown with album art
- Replace default tooltip
- Set up the configuration menu