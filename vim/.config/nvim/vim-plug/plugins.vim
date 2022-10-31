" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Syntax
    Plug 'sheerun/vim-polyglot'
    Plug 'chrisbra/colorizer'
    Plug 'frazrepo/vim-rainbow'

    " Autocomplete
    Plug 'tpope/vim-surround'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " tmux
    Plug 'aserowy/tmux.nvim'
    Plug 'christoomey/vim-tmux-navigator'


call plug#end()
