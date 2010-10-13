filetype plugin on

" Read-only .doc through antiword
autocmd BufReadPre *.doc silent set ro
autocmd BufReadPost *.doc silent %!antiword "%"

" Read-only odt/odp through odt2txt
autocmd BufReadPre *.odt,*.odp silent set ro
autocmd BufReadPost *.odt,*.odp silent %!odt2txt "%"

" Read-only pdf through pdftotext
autocmd BufReadPre *.pdf silent set ro
autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk -layout -q -eol unix "%" - | fmt -w78

" Read-only rtf through unrtf
autocmd BufReadPre *.rtf silent set ro
autocmd BufReadPost *.rtf silent %!unrtf --text

" For indented code
" map <F5> <Esc> :perl use Text::FindIndent;VIM::DoCommand($_) for Text::FindIndent->to_vim_commands(join "\n", $curbuf->Get(1..$curbuf->Count()));<CR>

set number
syntax on
set hlsearch
set nocompatible
set modeline
set autoindent
set showmode
set hidden
set wildmenu
set visualbell
set cursorline
set ttyfast
set ruler
set undofile
colorscheme desert
"set runtimepath=/usr/share/vim,~/.vim,/usr/share/vim/vimfiles
