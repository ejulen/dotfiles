# README
These are my personal dotfiles. Feel free to use them.
## Getting started
1. Clone this repository into a suitable directory.
2. Either copy these files to where they're supposed to go or create symlinks. I'm going to use the latter method myself, if you want to do it too, here's an example:
    ```bash
    # Say we want to use the Vim dotfile and we've
    # put the dotfiles in the ~/.dotfiles directory.
    
    ln -s ~/.dotfiles/vimrc ~/.vimrc
    ```
3. You are now using my terrible customizations. Is this what you wanted?

## VS Code settings

Symlink or copy to:
- Windows: `%APPDATA%\Code\User\settings.json`
- MacOS: `$HOME/Library/Application Support/Code/User/settings.json`
- Linux: `$HOME/.config/Code/User/settings.json`
