set nocompatible
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

" Turn on automatic reload of files that have changed
set autoread

" Choose colors that are most appropriate given the GUI background.
" (uncomment the following line if you are using dark background terminal)
set background=dark

" Set the color scheme for the editor
"color blue

" Create a backup copy and delete after file has been saved.
set nobackup
set writebackup

" Turn off limiting vi backwards compatability
set nocompatible

" Turn off accented characters
set nodigraph.

" Force escapde to be recognized with no delay
set esckeys.

" Abandon buffers when they become hidden
set nohidden.

" Adding Git branch info to status line
"set statusline=%{fugitive#statusline()}

" Display the ruler at the bottom of the screen
set ruler.

" Show partial commands in status line
set showcmd.

" Use a visual bell rather than system beep
"set visualbell.

" Turn off all other error bells
set noerrorbells.

" Do not automatically move the cursor to the first space on the next blank line
set nostartofline

" Set the backspace key to behave as normal
set backspace=2.

" Set the display settings for the text
"   - "c"   Auto-wrap comments
"   - "t"   Auto-wrap text
"   - "q"   Allow formatting comments with "gq"
"   - "r"   Auto-insert comment leader when hitting Enter in Insert mode
set formatoptions=cqrt.

" Give every window a status line
set laststatus=2.

" Force all message abbreviations possible
set shortmess=a.

" Allow the following characters to wrap lines when on the first or last character.
set whichwrap=<,>,h,l

" Turn on syntax highlighting
syntax on

" Set C-Style indenting
set cindent

" Set the tab spacing
set tabstop=4

" Set how the gui will display a tab
set softtabstop=4

" Force tabs to be spaces
set expandtab

" Set the shifting width to match tabs
set shiftwidth=4

" Set C-Style indenting options (see help for more options)
"   - "g0" Do not shift over public/private keywords.
"   - "(0" Indent items in parentheses based on the deep of the opening
"   - "c4" Indent comment lines after a comment opener N spaces
set cinoptions=g0,(0,c4

" In vimdiff, [c and ]c move to the next change. Remap the commands to
" move to the next change and center the change to the middle of the screen
map ]c ]czz
map [c [czz

" Usually I get lazy with the l-shift key and I hit the <S-Del> command
" that is the result of hitting the shift and backspace at the same time..
" Simply remap the combination to the backspace key only.
imap <S-Del> <BS>

" Remove the gui toolbar that is automatically started in gvim on Linux.
set guioptions-=T

" Use GNUmake for compilation and quickfix formatting
"set makeprg=build\ --\ -j4\ debug   " Base 2 Settings
set makeprg=make                   " Default Settings

" Force tag list if necessary
map <C-]> g<C-]>
map g<C-\> :cs find 3 <C-R>=expand("<cword>")<CR><CR>

" Setup the tag file structure used in the vim windows..
set nocp
filetype plugin on
set tags+=$CTAGS_LOC

" Set taglist defaults
let Tlist_WinWidth=75
let Tlist_Show_One_File=1
map <C-L><C-T> :TlistToggle<cr>

" Set taglist defaults
" nnoremap <silent> <C-f><C-t> :FuzzyFinderTag!<CR>.
" nnoremap <silent> <C-f><C-t><C-f> :FuzzyFinderTaggedFile<CR>.
" nnoremap <silent> <C-f><C-f> :FuzzyFinderFile<CR>.

" Automatically jump to the matching parentheses for a short period of time
" when you close the matching brace
set showmatch
set matchtime=2

" Remap the [[ and ]] keystrokes to center the target brace in the middle
" of the editor window by appending a zz command
map [[ [[zz
map ]] ]]zz

" Allow case insensitive searching and smart case searching as well as
" smarter autocomplete of words
set ignorecase
set smartcase
set incsearch
set infercase

" Avoid strange pause after hitting escape sequence
set ttimeout
set ttimeoutlen=100

" Avoid formatting when you are about to paste something into the editor
" set paste

" Identify formatting errors early and often...
set listchars=tab:>-,trail:.,extends:#
set list

" Underscore the entire line that you are currently editing
"set cursorline cursorcolumn
set cursorline

" To do the first type of search, hit 'CTRL-\', followed by one of the
" cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
" search will be displayed in the current window.  You can use CTRL-T to
" go back to where you were before the search.
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" Enable relative line numbers
set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
