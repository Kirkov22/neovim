" Update runtimepath
if has('win32') || has('win64')
  set runtimepath^=$HOME\_neovim\plugins
endif

" Set up status line
set laststatus=2                      " Always show the status line
set statusline=Editing\ %t            " Filename
set statusline+=%y                    " Filetype
set statusline+=,\ Line:\ %l          " Line: lineno.
set statusline+=\/\ %L                " / Total-Lines
set statusline+=,\ col:\ %c           " , col: colno.
set statusline+=\ -\ %{CurrentWord()} " - <cword> 
set statusline+=[%{SyntaxItem()}]     " [SyntaxGroup]
set statusline+=%=                    " On right side ...
set statusline+=%f                    " relative path
function! CurrentWord()
  return expand("<cword>")
endfunction
" From vim wiki
function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

" Neovim config
set number                      " Show line numbers
set numberwidth=4               " Default 3 digits wide
set ignorecase                  " Ignore case in search patterns
set wrapmargin=8                " Begin wrapping 8 characters from window border
set autoindent                  " Begin new lines with indent from previous line
set wildmenu                    " Turn on enhanced command line completion
set expandtab                   " Use spaces in place of tabs
set tabstop=2                   " Tab-stop = 2
set shiftwidth=2
set visualbell                  " Disable chime

if has('win32') || has('win64')
  set directory=$HOME\_neovim\tmp " Place swap files in ...
else
  set directory=~/tmp
endif

set list                        " Show hidden characters(EOL, etc.)
set listchars=eol:¬,trail:·     " Show EOL, trailing spaces
filetype plugin on              " Enable filetype plugins
syntax on                       " Enable syntax highlighting
set cmdheight=2                 " Allow 2 lines for cmdheight
"set termguicolors               " Enable truecolor
colorscheme zellner

" --------
" Mappings
" -------- 

" Leader key
let mapleader = ","
let maplocalleader = "\\"

" Alternative exit from Insert Mode
inoremap jk <esc>

" UPPERCASE the Current Word
inoremap <c-u> <esc>lviwUi
nnoremap <c-u> viwU

" Alternative 'to beginning/end of line'
nnoremap H ^
nnoremap L $

" Alternative to 'in-parenthesis'
onoremap p i(

" Replace 'next parenthesis'/'last parenthesis'
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>

" Add blank lines but stay in normal mode
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

" Move between vertical windows
noremap <c-H> <c-W>h
noremap <c-L> <c-W>l

" Move between horizontal windows
noremap <c-J> <c-W>j<c-W>_
noremap <c-K> <c-W>k<c-W>_

" Disable arrow keys in normal mode
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

" Next tab
noremap <F9> :tabn<CR>
