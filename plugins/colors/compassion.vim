" File:       compassion.vim
" Maintainer: Tim Schofield (Kirkov22)

" Description:"{{{
" ----------------------------------------------------------------------------
" The code taken from solarized.vim
" https://github.com/altercation/vim-colors-solarized

"}}}

" Requirements And Recommendations:"{{{
" ----------------------------------------------------------------------------
" This colourscheme is intended for use on:
"   - nvim-qt 0.2 for Linux, Mac and Windows.
"

"}}}

" Initialisation:"{{{
" ----------------------------------------------------------------------------
let s:use_truecolor = 0
if &termguicolors
  let s:use_truecolor = 1
endif

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "compassion"

"}}}

" GUI And Cterm Palettes:"{{{
" ----------------------------------------------------------------------------
if s:use_truecolor
  let s:vmode      = "gui"
  "   let s:background = "#1d1f21"
  let s:background = "#1A1A1A"  " Powder Black  - 7
  "   let s:foreground = "#c5c8c6"
  let s:foreground = "#DADBB1"  " Pale Yellow   - 11
  let s:selection  = "#373b41"
  "   let s:line       = "#282a2e"
  let s:line       = "#4A5858"  " Dark Gray     - 0
  "   let s:comment    = "#707880"
  let s:comment    = "#909090"  " Mid Gray      - 8
  "   let s:red        = "#cc6666"
  let s:red        = "#CD5C57"  " Salmon        - 1
  let s:orange     = "#DE935F"
  let s:yellow     = "#f0c674"
  "   let s:green      = "#b5bd68"
  let s:green      = "#64B041"  " Emerald       - 2
  "   let s:aqua       = "#8abeb7"
  let s:aqua       = "#6CC7EB"  " Sky Blue      - 12
  "   let s:blue       = "#81a2be"
  let s:blue       = "#3D95E6"  " Cerulean      - 4
  "   let s:purple     = "#b294bb"
  let s:purple     = "#A999AC"  " Violet        - 5
  let s:pink       = "#FFA0A0"  " Pink          - 9
  let s:window     = "#303030"
  let s:darkcolumn = "#1c1c1c"
  let s:addbg      = "#5F875F"
  let s:addfg      = "#d7ffaf"
  let s:changebg   = "#5F5F87"
  let s:changefg   = "#d7d7ff"
else
  let s:vmode      = "cterm"
  let s:background = "234"
  let s:window     = "236"
  let s:darkcolumn = "234"
  let s:addbg      = "65"
  let s:addfg      = "193"
  let s:changebg   = "60"
  let s:changefg   = "189"
  let s:foreground = "11"   " Pale Yellow
  "     let s:foreground = "15"   " White
  let s:selection  = "8"    " DarkGrey
  let s:line       = "8"    " DarkGrey
  "     let s:line       = "0"    " PowderBlack
  let s:comment    = "8"    " LightGrey
  let s:red        = "1"    " Salmon
  "     let s:red        = "9"    " LightRed
  let s:orange     = "3"    " DarkYellow
  let s:yellow     = "11"   " Pale Yellow
  "     let s:yellow     = "11"   " LightYellow
  let s:green      = "2"    " Emerald Green
  "     let s:green      = "10"   " LightGreen
  let s:aqua       = "12"   " Sky Blue
  "     let s:aqua       = "14"   " LightCyan
  let s:blue       = "4"    " Cerulean Blue
  "     let s:blue       = "12"   " LightBlue
  let s:purple     = "5"    " Violet
  "     let s:purple     = "13"   " LightMagenta
  let s:pink       = "9"    " Pink
  "     let s:pink       = "13"   " LightMagenta
endif

"}}}

" Formatting Options:"{{{
" ----------------------------------------------------------------------------
let s:none = "NONE"
let s:t_none = "NONE"
let s:n = "NONE"
let s:c = ",undercurl"
let s:r = ",reverse"
let s:s = ",standout"
let s:b = ",bold"
let s:u = ",underline"
let s:i = ",italic"
"}}}

" Highlighting Primitives:"{{{
" ----------------------------------------------------------------------------
exe "let s:bg_none = ' ".s:vmode."bg=".s:none ."'"
exe "let s:bg_foreground = ' ".s:vmode."bg=".s:foreground."'"
exe "let s:bg_background = ' ".s:vmode."bg=".s:background."'"
exe "let s:bg_selection = ' ".s:vmode."bg=".s:selection ."'"
exe "let s:bg_line = ' ".s:vmode."bg=".s:line ."'"
exe "let s:bg_comment = ' ".s:vmode."bg=".s:comment ."'"
exe "let s:bg_red = ' ".s:vmode."bg=".s:red ."'"
exe "let s:bg_orange = ' ".s:vmode."bg=".s:orange ."'"
exe "let s:bg_yellow = ' ".s:vmode."bg=".s:yellow ."'"
exe "let s:bg_green = ' ".s:vmode."bg=".s:green ."'"
exe "let s:bg_aqua = ' ".s:vmode."bg=".s:aqua ."'"
exe "let s:bg_blue = ' ".s:vmode."bg=".s:blue ."'"
exe "let s:bg_purple = ' ".s:vmode."bg=".s:purple ."'"
exe "let s:bg_pink = ' ".s:vmode."bg=".s:pink ."'"
exe "let s:bg_window = ' ".s:vmode."bg=".s:window ."'"
exe "let s:bg_darkcolumn = ' ".s:vmode."bg=".s:darkcolumn."'"
exe "let s:bg_addbg = ' ".s:vmode."bg=".s:addbg ."'"
exe "let s:bg_addfg = ' ".s:vmode."bg=".s:addfg ."'"
exe "let s:bg_changebg = ' ".s:vmode."bg=".s:changebg ."'"
exe "let s:bg_changefg = ' ".s:vmode."bg=".s:changefg ."'"

exe "let s:fg_none = ' ".s:vmode."fg=".s:none ."'"
exe "let s:fg_foreground = ' ".s:vmode."fg=".s:foreground."'"
exe "let s:fg_background = ' ".s:vmode."fg=".s:background."'"
exe "let s:fg_selection = ' ".s:vmode."fg=".s:selection ."'"
exe "let s:fg_line = ' ".s:vmode."fg=".s:line ."'"
exe "let s:fg_comment = ' ".s:vmode."fg=".s:comment ."'"
exe "let s:fg_red = ' ".s:vmode."fg=".s:red ."'"
exe "let s:fg_orange = ' ".s:vmode."fg=".s:orange ."'"
exe "let s:fg_yellow = ' ".s:vmode."fg=".s:yellow ."'"
exe "let s:fg_green = ' ".s:vmode."fg=".s:green ."'"
exe "let s:fg_aqua = ' ".s:vmode."fg=".s:aqua ."'"
exe "let s:fg_blue = ' ".s:vmode."fg=".s:blue ."'"
exe "let s:fg_purple = ' ".s:vmode."fg=".s:purple ."'"
exe "let s:fg_pink = ' ".s:vmode."fg=".s:pink ."'"
exe "let s:fg_window = ' ".s:vmode."fg=".s:window ."'"
exe "let s:fg_darkcolumn = ' ".s:vmode."fg=".s:darkcolumn."'"
exe "let s:fg_addbg = ' ".s:vmode."fg=".s:addbg ."'"
exe "let s:fg_addfg = ' ".s:vmode."fg=".s:addfg ."'"
exe "let s:fg_changebg = ' ".s:vmode."fg=".s:changebg ."'"
exe "let s:fg_changefg = ' ".s:vmode."fg=".s:changefg ."'"

exe "let s:fmt_none = ' ".s:vmode."=NONE".  " term=NONE" ."'"
exe "let s:fmt_bold = ' ".s:vmode."=NONE".s:b.  " term=NONE".s:b ."'"
exe "let s:fmt_bldi = ' ".s:vmode."=NONE".s:b.  " term=NONE".s:b ."'"
exe "let s:fmt_undr = ' ".s:vmode."=NONE".s:u.  " term=NONE".s:u ."'"
exe "let s:fmt_undb = ' ".s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi = ' ".s:vmode."=NONE".s:u.  " term=NONE".s:u ."'"
exe "let s:fmt_curl = ' ".s:vmode."=NONE".s:c.  " term=NONE".s:c ."'"
exe "let s:fmt_ital = ' ".s:vmode."=NONE".s:i.  " term=NONE".s:i ."'"
exe "let s:fmt_stnd = ' ".s:vmode."=NONE".s:s.  " term=NONE".s:s ."'"
exe "let s:fmt_revr = ' ".s:vmode."=NONE".s:r.  " term=NONE".s:r ."'"
exe "let s:fmt_revb = ' ".s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

if s:use_truecolor
  exe "let s:sp_none = ' guisp=".s:none ."'"
  exe "let s:sp_foreground = ' guisp=".s:foreground."'"
  exe "let s:sp_background = ' guisp=".s:background."'"
  exe "let s:sp_selection = ' guisp=".s:selection ."'"
  exe "let s:sp_line = ' guisp=".s:line ."'"
  exe "let s:sp_comment = ' guisp=".s:comment ."'"
  exe "let s:sp_red = ' guisp=".s:red ."'"
  exe "let s:sp_orange = ' guisp=".s:orange ."'"
  exe "let s:sp_yellow = ' guisp=".s:yellow ."'"
  exe "let s:sp_green = ' guisp=".s:green ."'"
  exe "let s:sp_aqua = ' guisp=".s:aqua ."'"
  exe "let s:sp_blue = ' guisp=".s:blue ."'"
  exe "let s:sp_purple = ' guisp=".s:purple ."'"
  exe "let s:sp_window = ' guisp=".s:window ."'"
  exe "let s:sp_addbg = ' guisp=".s:addbg ."'"
  exe "let s:sp_addfg = ' guisp=".s:addfg ."'"
  exe "let s:sp_changebg = ' guisp=".s:changebg ."'"
  exe "let s:sp_changefg = ' guisp=".s:changefg ."'"
else
  let s:sp_none = ""
  let s:sp_foreground = ""
  let s:sp_background = ""
  let s:sp_selection = ""
  let s:sp_line = ""
  let s:sp_comment = ""
  let s:sp_red = ""
  let s:sp_orange = ""
  let s:sp_yellow = ""
  let s:sp_green = ""
  let s:sp_aqua = ""
  let s:sp_blue = ""
  let s:sp_purple = ""
  let s:sp_window = ""
  let s:sp_addbg = ""
  let s:sp_addfg = ""
  let s:sp_changebg = ""
  let s:sp_changefg = ""
endif

" "}}}
" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------
exe "hi!  ColorColumn" .s:fg_none .s:bg_line .s:fmt_none
"         Conceal"
"         Cursor"
"         CursorIM"
exe "hi!  CursorColumn" .s:fg_none .s:bg_line .s:fmt_none
exe "hi!  CursorLine" .s:fg_none .s:bg_line .s:fmt_none
exe "hi!  Directory" .s:fg_blue .s:bg_none .s:fmt_none
exe "hi!  DiffAdd" .s:fg_addfg .s:bg_addbg .s:fmt_none
exe "hi!  DiffChange" .s:fg_changefg .s:bg_changebg .s:fmt_none
exe "hi!  DiffDelete" .s:fg_background .s:bg_red .s:fmt_none
exe "hi!  DiffText" .s:fg_background .s:bg_blue .s:fmt_none
exe "hi!  ErrorMsg" .s:fg_background .s:bg_red .s:fmt_stnd
exe "hi!  VertSplit" .s:fg_window .s:bg_none .s:fmt_none
exe "hi!  Folded" .s:fg_comment .s:bg_darkcolumn .s:fmt_none
exe "hi!  FoldColumn" .s:fg_none .s:bg_darkcolumn .s:fmt_none
exe "hi!  SignColumn" .s:fg_none .s:bg_darkcolumn .s:fmt_none
"         Incsearch"
exe "hi!  LineNr" .s:fg_selection .s:bg_none .s:fmt_none
" exe "hi!  LineNr" .s:fg_comment .s:bg_line .s:fmt_none
exe "hi!  CursorLineNr" .s:fg_yellow .s:bg_none .s:fmt_bold
exe "hi!  MatchParen" .s:fg_background .s:bg_changebg .s:fmt_none
exe "hi!  ModeMsg" .s:fg_green .s:bg_none .s:fmt_none
exe "hi!  MoreMsg" .s:fg_green .s:bg_none .s:fmt_none
exe "hi!  NonText" .s:fg_selection .s:bg_none .s:fmt_none
exe "hi!  Pmenu" .s:fg_foreground .s:bg_selection .s:fmt_none
exe "hi!  PmenuSel" .s:fg_foreground .s:bg_selection .s:fmt_revr
"         PmenuSbar"
"         PmenuThumb"
exe "hi!  Question" .s:fg_green .s:bg_none .s:fmt_none
exe "hi!  Search" .s:fg_background .s:bg_yellow .s:fmt_none
exe "hi!  SpecialKey" .s:fg_selection .s:bg_none .s:fmt_none
exe "hi!  SpellBad" .s:fg_red .s:bg_none .s:fmt_undr
exe "hi!  SpellCap" .s:fg_blue .s:bg_none .s:fmt_undr
exe "hi!  SpellLocal" .s:fg_aqua .s:bg_none .s:fmt_undr
exe "hi!  SpellRare" .s:fg_purple .s:bg_none .s:fmt_undr
exe "hi!  StatusLine" .s:fg_comment .s:bg_background .s:fmt_revr
exe "hi!  StatusLineNC" .s:fg_window .s:bg_comment .s:fmt_revr
exe "hi!  TabLine" .s:fg_foreground .s:bg_darkcolumn .s:fmt_revr
"         TabLineFill"
"         TabLineSel"
exe "hi!  Title" .s:fg_yellow .s:bg_none .s:fmt_none
exe "hi!  Visual" .s:fg_none .s:bg_selection .s:fmt_none
"         VisualNos"
exe "hi!  WarningMsg" .s:fg_red .s:bg_none .s:fmt_none
"         WildMenu"

" Use Xresources for background colour
if s:use_truecolor
  exe "hi!  Normal" .s:fg_foreground .s:bg_background .s:fmt_none
else
  exe "hi!  Normal" .s:fg_foreground .s:bg_none .s:fmt_none
endif

"}}}

" " Generic Syntax Highlighting: (see :help group-name)"{{{
" " ----------------------------------------------------------------------------
exe "hi!  Comment" .s:fg_comment .s:bg_none .s:fmt_none

exe "hi!  Constant" .s:fg_aqua .s:bg_none .s:fmt_none
exe "hi!  String" .s:fg_green .s:bg_none .s:fmt_none
"         Character"
"         Number"
"         Boolean"
"         Float"

exe "hi!  Identifier" .s:fg_red .s:bg_none .s:fmt_none
exe "hi!  Function" .s:fg_orange .s:bg_none .s:fmt_none

exe "hi!  Statement" .s:fg_blue .s:bg_none .s:fmt_none
"         Conditional"
"         Repeat"
"         Label"
exe "hi!  Operator" .s:fg_purple .s:bg_none .s:fmt_none
"         Keyword"
"         Exception"

exe "hi!  PreProc" .s:fg_pink .s:bg_none .s:fmt_none
"         Include"
"         Define"
"         Macro"
"         PreCondit"

exe "hi!  Type" .s:fg_blue .s:bg_none .s:fmt_none
"         StorageClass"
exe "hi!  Structure" .s:fg_orange .s:bg_none .s:fmt_none
"         Typedef"

exe "hi!  Special" .s:fg_yellow .s:bg_none .s:fmt_none
"         SpecialChar"
"         Tag"
"         Delimiter"
"         SpecialComment"
"         Debug"

exe "hi!  Underlined" .s:fg_green .s:bg_none .s:fmt_undr

exe "hi!  Ignore" .s:fg_none .s:bg_none .s:fmt_none

exe "hi!  Error" .s:fg_background .s:bg_red .s:fmt_none

exe "hi!  Todo" .s:fg_addfg .s:bg_none .s:fmt_none

" Quickfix window highlighting
exe "hi!  qfLineNr" .s:fg_yellow .s:bg_none .s:fmt_none
"         qfFileName"
"         qfLineNr"
"         qfError"

"}}}

" Diff Syntax Highlighting:"{{{
" ----------------------------------------------------------------------------
" Diff
" diffOldFile
" diffNewFile
" diffFile
" diffOnly
" diffIdentical
" diffDiffer
" diffBDiffer
" diffIsA
" diffNoEOL
" diffCommon
hi!  link diffRemoved Constant
" diffChanged
hi!  link diffAdded Special
" diffLine
" diffSubname
" diffComment

"}}}
