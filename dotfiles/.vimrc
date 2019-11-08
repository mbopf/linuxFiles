" .vimrc
"
" Pathogen
execute pathogen#infect()

filetype plugin indent on
syntax on

set t_Co=256
colorscheme desert256
hi Search cterm=NONE ctermfg=white ctermbg=blue

" don't have files trying to override this .vimrc:
set nomodeline

" * Text Formatting -- General

" don't make it look like there are line breaks where there aren't:
"set nowrap

" use indents of 4 spaces, and have them copied down lines:
set shiftwidth=4
set tabstop=4
"set softtabstop=4
set shiftround
set expandtab
" set autoindent
set noautoindent

" normally don't automatically format `text' as it is typed, IE only do this
" with comments, at 79 characters:
set formatoptions-=t
" > Changed it from - to + 't' since I want it to wrap for non-comment, so.
"set formatoptions+=t
"set textwidth=79

" make searches case-insensitive, unless they contain upper-case letters:
set noignorecase
set smartcase

" show the `best match so far' as search strings are typed:
set incsearch

" assume the /g flag on :s substitutions to replace all matches in a line:
"set gdefault

" * Spelling

" * Keystrokes -- Moving Around

" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc> do
" by default), and ~ covert case over line breaks; also have the cursor keys
" wrap in insert mode:
set whichwrap=h,l,~,[,]

" page down with <Space> (like in `Lynx', `Mutt', `Pine', `Netscape Navigator',
" `SLRN', `Less', and `More'); page up with - (like in `Lynx', `Mutt', `Pine'),
" or <BkSpc> (like in `Netscape Navigator'):
"noremap <Space> <PageDown>
"noremap <BS> <PageUp>
"noremap - <PageUp>
" [<Space> by default is like l, <BkSpc> like h, and - like k.]

" scroll the window (but leaving the cursor in the same place) by a couple of
" lines up/down with <Ins>/<Del> (like in `Lynx'):
noremap <Ins> 2<C-Y>
noremap <Del> 2<C-E>
" [<Ins> by default is like i, and <Del> like x.]

" use <F6> to cycle through split windows (and <Shift>+<F6> to cycle backwards,
" where possible):
nnoremap <F6> <C-W>w
nnoremap <S-F6> <C-W>W

" use <Ctrl>+N/<Ctrl>+P to cycle through files:
nnoremap <C-N> :next<CR>
nnoremap <C-P> :prev<CR>
" [<Ctrl>+N by default is like j, and <Ctrl>+P like k.]

" have % bounce between angled brackets, as well as t'other kinds:
set matchpairs+=<:>

" have <F1> prompt for a help topic, rather than displaying the introduction
" page, and have it do this from any mode:
"nnoremap <F1> :help<Space>
"vmap <F1> <C-C><F1>
"omap <F1> <C-C><F1>
"map! <F1> <C-C><F1>


" * Keystrokes -- Formatting

" have Q reformat the current paragraph (or selected text if there is any):
nnoremap Q gqap
vnoremap Q gq

" have the usual indentation keystrokes still work in visual mode:
vnoremap <C-T> >
vnoremap <C-D> <LT>
vmap <Tab> <C-T>
vmap <S-Tab> <C-D>

" have Y behave analogously to D and C rather than to dd and cc (which is
" already done by yy):
noremap Y y$

" Add apache httplog syntax highlighting (see ~/.vim/syntax/httplog.vim)
" See also:
"http://blog.techstacks.com/2012/12/vim-syntax-highlighter-for-apache-logs.html
au BufRead,BufNewFile *access?log* set filetype=httplog
"au BufRead,BufNewFile *.log set filetype=log4j_syntax_highlighter
au BufNewFile,BufRead *.log set filetype=log

" JSON highlighting using Python
"au! BufNewFile,BufRead *.json set filetype=javascript

"EnhancedDiff - use Patience algorithm
"if &diff
"    let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
"endif
"
