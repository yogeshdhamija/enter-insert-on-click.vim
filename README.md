# enter-insert-on-click.vim

This plugin changes the mouse click behaviour of vim such that:
- Clicking on a buffer in NORMAL mode will cause it to enter INSERT mode
- Clicking on a terminal buffer will cause it to enter INSERT mode on NeoVim and TERMINAL mode on Vim
    - This will only happen if the "bottom" of the terminal buffer is visible, to allow clicking around if you're scrolled up.

- Using [vim-plug](https://github.com/junegunn/vim-plug): `Plug 'yogeshdhamija/enter-insert-on-click.vim'`