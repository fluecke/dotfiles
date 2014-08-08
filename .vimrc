" .vimrc
" Author: Florian Lücke

" load bundles (vundle) {{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'scrooloose/syntastic'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'tomasr/molokai'
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'airblade/vim-gitgutter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'chrisbra/csv.vim'
Bundle 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on
" }}}

" bundle settings {{{
" airline {{{
" better font
let g:airline_powerline_fonts = 1
" use airlines tabline
let g:airline#extensions#tabline#enabled = 1
" show tab number, not number of buffers
let g:airline#extensions#tabline#tab_nr_type = 1
" show tabs not buffers, default vim tab behaviour
let g:airline#extensions#tabline#show_buffers = 0
" }}}

" youcompleteme {{{
let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']
" }}}

" ultisnips {{{
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" }}}

" syntastic
let g:syntastic_error_symbol = '!'

let g:solarized_termcolors=256

" latex box {{{
" enable folding
let g:LatexBox_Folding = 1
" pdf viewer
let g:LatexBox_viewer = 'open'
" configure quickfix window
let g:LatexBox_quickfix = 4
" }}}
" }}}

" vim settings {{{
syntax on
syntax enable

colorscheme molokai

let g:tex_flavor = "latex"

" use utf-8
scriptencoding utf-8
set encoding=utf-8

set autochdir       " cd to directory of current file
set ttyfast         " redraw more characters
set number          " enable line numbers
set laststatus=2    " always show statusbar
set equalalways     " make windows the same size

set shell=bash\ --login

" make backspace work as expected
set backspace=indent,eol,start

" divider for vertical windows
set fillchars+=vert:│

let g:sh_fold_enabled=1

" always keep two line above and below the cursor
set scrolloff=2
set sidescrolloff=80

" reload files that were changed
set autoread

set listchars-=eol:$
set listchars+=extends:>,precedes:<

" keep splits equally sized
au VimResized * exe "normal \<c-w>="

set cursorline

" leader {{{
let mapleader=","
let maplocalleader=","
" }}}

" tabs, spaces, wrapping {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround
let &colorcolumn=join(range(81,999),",")
set smarttab

" show tabs
set list
set listchars+=tab:>·

" highlight trailing whitespace {{{
hi ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
hi clear ExtraWhitespace

augroup trailing
    au!
    au InsertEnter * hi clear ExtraWhitespace
    au InsertLeave * hi ExtraWhitespace ctermbg=red guibg=red
augroup END
" }}}
" }}}

" indenting {{{
set cindent
set smartindent
set autoindent
" }}}

" wildmenu {{{
set wildmode=longest,list,full
set wildmenu

set wildignore+=.DS_Store                       " on OS X
set wildignore+=.git                            " version control
set wildignore+=*.aux,*.out,*.toc               " Latex files
set wildignore+=*.jpg,*.gif,*.bmp,*.png,*.jpeg  " images
set wildignore+=*.class,*.jar                   " java files
" }}}

" return to the same line when reopening a file {{{
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") < line("$") |
        \       execute 'normal! g`"zvzz' |
        \ endif
augroup END
" }}}

" backup {{{
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set undofile
set backup
set noswapfile
set history=1000
" }}}

" search {{{
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
" }}}

" don't beep {{{
set visualbell
set noerrorbells
" }}}

" keymappings {{{
" don't move on *
nnoremap * *<C-o>
" make searching \v(ery-magic)
nnoremap / /\v

" go to end with <C-e> in command-line mode
cnoremap <C-e> <end>
" go to start with <C-a> in command-line mode
cnoremap <C-a> <home>

" remove highlights with C-c in normal mode
nmap <C-c> :let @/ = ""<CR>

" prevent using arrow keys {{{
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
" }}}
" }}}
" }}}

" vim:fdm=marker:
