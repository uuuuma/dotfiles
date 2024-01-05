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

## Installation
### 1. Install libraries using brew
Run the following command.

```zsh
brew bundle
```

### 2. Make symbolic links to the target files
Run the following command.

```zsh
./symlink.zsh
```

> [!CAUTION]  
> If there is already the target files, this command overwrite them.

### 3. Configure the macOS settings
Run the following command.

```zsh
./macos.zsh
```

### 4. Use the terminal theme
import `terminal/Google Dark.terminal` from Terminal.app.

## Overwrite settings
### .zshrc
write settings you want to overwrite to `~/.zshrc.user`

### .gitconfig
write the personal git settings like `user.name` and `user.email` to `~/.gitconfig.user`

## Author
uuuuma

## License
[MIT](LICENSE)
