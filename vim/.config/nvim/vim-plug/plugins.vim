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
    Plug 'digitaltoad/vim-pug'
    Plug 'dNitro/vim-pug-complete', { 'for': ['jade', 'pug'] }
    Plug 'rodjek/vim-puppet'
    Plug 'chrisbra/colorizer'
    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-scripts/java_getset.vim'
    Plug 'vim-scripts/xhtml.vim'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Theme
    Plug 'liuchengxu/space-vim-dark'
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'
    Plug 'rakr/vim-one'
    Plug 'NLKNguyen/papercolor-theme'

    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " tmux
    Plug 'aserowy/tmux.nvim'
    Plug 'christoomey/vim-tmux-navigator'
call plug#end()
