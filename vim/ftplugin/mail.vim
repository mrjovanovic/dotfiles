" Vim filetype plugin file

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl modeline< tw< fo< comments<"

" Don't use modelines in e-mail messages, avoid trojan horses and nasty
" "jokes" (e.g., setting 'textwidth' to 5).
setlocal nomodeline

" many people recommend keeping e-mail messages 72 chars wide
if &tw == 0
  setlocal tw=72
endif

" Set 'formatoptions' to break text lines and keep the comment leader ">".
setlocal fo=taw

" Set word wrapping to be soft, cursors move nicely
"set wrap linebreak nolist
"setlocal display+=lastline
"set tw=0
"set wm=0
" it is better to use hard wrapping, but make sure format=flowed is set in mutt
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


" Add n:> to 'comments, in case it was removed elsewhere
setlocal comments+=n:>

" Add mappings, unless the user doesn't want this.
if !exists("no_plugin_maps") && !exists("no_mail_maps")
  " Quote text by inserting "> "
  if !hasmapto('<Plug>MailQuote')
    vmap <buffer> <LocalLeader>q <Plug>MailQuote
    nmap <buffer> <LocalLeader>q <Plug>MailQuote
  endif
  vnoremap <buffer> <Plug>MailQuote :s/^/> /<CR>:noh<CR>``
  nnoremap <buffer> <Plug>MailQuote :.,$s/^/> /<CR>:noh<CR>``
endif

"hotkey to turn spellchecking on or off
set spelllang=en_us
nmap	<F7>	<ESC>:set spell!<CR>
map!	<F7>	<ESC>:set spell!<CR>

" This function moves the cursor to the beginning of the e-mail, beyond the
" headers
" Taken from Cedric Duval - http://cedricduval.free.fr/download/mail.vim
function! Mail_Beginning()
    exe "normal gg"
    if getline (line ('.')) =~ '^From: '
        exe "normal /^$\<CR>o"
    endif
endfunction

call Mail_Beginning() 

