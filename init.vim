" Neovim config
set number                    " Show line numbers
set numberwidth=4             " Default 3 digits wide
set ignorecase                " Ignore case in search patterns
set wrapmargin=8              " Begin wrapping 8 characters from window border
set autoindent                " Begin new lines with indent from previous line
set wildmenu                  " Turn on enhanced command line completion
set expandtab                 " Use spaces in place of tabs
set tabstop=2                 " Tab-stop = 2 set shiftwidth=2
"set directory=~/tmp           " Place swap files in ...
set list                      " Show hidden characters(EOL, etc.)
set listchars=eol:¬,trail:·   " Show EOL, trailing spaces
"filetype plugin on            " Enable filetype plugins
syntax on                     " Enable syntax highlighting
