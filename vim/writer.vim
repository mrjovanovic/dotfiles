" minimalist mode for writing text, no distractions and lots of whitespacing
"

if &tw == 0
  setlocal tw=72
endif

" Set 'formatoptions' to break text lines and keep the comment leader ">".
setlocal fo=taw

noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
noremap  <buffer> <silent> <Home> g<Home>
noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Home> <C-o>g<Home>
inoremap <buffer> <silent> <End>  <C-o>g<End>
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
onoremap <silent> j gj
onoremap <silent> k gk

"Appearance options
" Move text a few columns to the left
set foldcolumn=12
" Change background of margin (fold column) to regular
hi FoldColumn ctermbg=0
" Get rid of tiny ~ characters
hi NonText ctermfg=0
" don't show status line
set laststatus=0

"hotkey to turn spellchecking on or off
set spelllang=en_us
nmap	<F7>	<ESC>:set spell!<CR>
map!	<F7>	<ESC>:set spell!<CR>
