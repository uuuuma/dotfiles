#!/usr/bin/env zsh

DOTFILES_DIR=$(cd $(dirname "${0}"); pwd)

# link dotfiles
DOTFILES=(
    ".zshrc"
    ".asdfrc"
    ".emacs.d"
    ".editorconfig"
    ".gitconfig"
    ".gitmessage"
)
for DOTFILE in $DOTFILES; do
    ln -snf "${DOTFILES_DIR}/${DOTFILE}" "${HOME}/${DOTFILE}"
done

# link vscode user settings
VSCODE_USER_DIR="${HOME}/Library/Application Support/Code/User"
VSCODE_USER_FILES=(
    "keybindings.json"
    "settings.json"
)
if [ -e "${VSCODE_USER_DIR}" ]; then
    for VSCODE_USER_FILE in $VSCODE_USER_FILES; do
        ln -snf "${DOTFILES_DIR}/.vscode/${VSCODE_USER_FILE}" "${VSCODE_USER_DIR}/${VSCODE_USER_FILE}"
    done
fi
