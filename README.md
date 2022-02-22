# dotfiles
![license](https://img.shields.io/github/license/uuuuma/dotfiles)
![platform](https://img.shields.io/static/v1?label=platform&message=macOS&color=lightgrey)
![macOS](https://img.shields.io/static/v1?label=macOS&message=>=12.0.1&color=informational)
![zsh](https://img.shields.io/static/v1?label=zsh&message=>=5.8&color=informational)

## Environment
- platform
    - macOS >= 12.0.1
- shell
    - zsh >= 5.8

## Instllation
### Make symbolic links to the target files
Run the following command.

```zsh
./symlink.zsh
```

**CAUTION**: If there is already the target files, this command overwrite them.

### Configure the macOS settings
Run the following command.

```zsh
./macos.zsh
```

If you want to undo the settings, run the command commented out above each command.

### Install brew libraries
Run the following command.

```zsh
brew bundle
```

### Configure the personal git settings
The .gitconfig includes `~/.gitconfig.user`

### Use the terminal theme
import the theme in the terminal directory from Terminal.app.

## Author
uuuuma

## License
[MIT](LICENSE)
