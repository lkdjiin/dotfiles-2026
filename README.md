# Dotfiles 2026

Managed with GNU Stow.

## Typical use

Move your file in the right module in folder `~/.dotfiles/`.

Let Stow manage it with:

    $ stow --dotfiles --verbose module_name

For the `usr_scripts` module don't forget to set the target:

    $ sudo stow --dotfiles --verbose --target=/usr/local/bin usr_scripts

To unlink:

    $ stow --dotfiles --verbose -D module_name

