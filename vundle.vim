" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" Navigation
Bundle 'ZoomWin'
Bundle 'kien/ctrlp.vim'
Bundle 'JazzCore/ctrlp-cmatcher'
Bundle 'vim-scripts/bufexplorer.zip'
" UI Additions
Bundle 'vim-scripts/vimwiki'
Bundle 'flazz/vim-colorschemes'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'Rykka/colorv.vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'mhinz/vim-signify'
Bundle 'mhinz/vim-startify'
Bundle 'mbbill/undotree'
Bundle 'jszakmeister/vim-togglecursor'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/ShowMarks'
" Commands
Bundle 'mileszs/ack.vim'
Bundle 'rstacruz/sparkup',{'rtp': 'vim'}
Bundle 'Shougo/unite.vim'
Bundle 'honza/vim-snippets'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'rking/ag.vim'
Bundle 'milkypostman/vim-togglelist'
Bundle 'mutewinter/swap-parameters'
Bundle 'tpope/vim-abolish'
Bundle 'scratch.vim'
Bundle 'mattn/emmet-vim'
Bundle 'mutewinter/GIFL'
Bundle 'AndrewRadev/switch.vim'
Bundle 'tpope/vim-eunuch'
Bundle 'itspriddle/vim-marked'
Bundle 'HelpClose'
Bundle 'mattn/gist-vim'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'vim-scripts/MultipleSearch'
Bundle 'sk1418/Join'
Bundle 'papanikge/vim-voogle'
Bundle 'benmills/vimux'
Bundle 'jgdavey/vim-turbux'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'dsawardekar/portkey'
Bundle 'dsawardekar/ember.vim'
Bundle 'rizzatti/dash.vim'
" Automatic Helpers
Bundle 'osyo-manga/vim-anzu'
Bundle 'xolox/vim-session'
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/MatchTagAlways'
Bundle 'ervandew/supertab'
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'vim-scripts/taglist.vim'
Bundle 'mutewinter/vim-autoreadwatch'
" Language Additions
"   Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-bundler'
"   JavaScript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
"   HTML
Bundle 'nono/vim-handlebars'
Bundle 'othree/html5.vim'
Bundle 'indenthtml.vim'
"   TomDoc
Bundle 'mutewinter/tomdoc.vim'
Bundle 'jc00ke/vim-tomdoc'
"   Other Languages
Bundle 'msanders/cocoa.vim'
Bundle 'mutewinter/taskpaper.vim'
Bundle 'mutewinter/nginx.vim'
Bundle 'timcharper/textile.vim'
Bundle 'mutewinter/vim-css3-syntax'
Bundle 'mutewinter/vim-tmux'
Bundle 'plasticboy/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'
Bundle 'tpope/vim-cucumber'
Bundle 'chrisbra/csv.vim'
Bundle 'digitaltoad/vim-jade'
" MatchIt
Bundle 'matchit.zip'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
" Libraries
Bundle 'L9'
Bundle 'tpope/vim-repeat'
Bundle 'mattn/webapi-vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'xolox/vim-misc'
" Productivity
Bundle 'mnick/vim-pomodoro'
Bundle 'xolox/vim-shell'
Bundle 'vimoutliner/vimoutliner'
