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
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " git
    Plug 'mhinz/vim-signify'

    " tmux
    Plug 'aserowy/tmux.nvim'
    Plug 'christoomey/vim-tmux-navigator'

    " Theme
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


call plug#end()
