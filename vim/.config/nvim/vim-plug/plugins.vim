" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'mhinz/vim-startify'

    " Syntax
    Plug 'sheerun/vim-polyglot'
    Plug 'digitaltoad/vim-pug'
    Plug 'chrisbra/colorizer'

    " Autocomplete
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'

    " tmux
    Plug 'aserowy/tmux.nvim'
    Plug 'christoomey/vim-tmux-navigator'

    " Theme
    Plug 'NLKNguyen/papercolor-theme'

call plug#end()
