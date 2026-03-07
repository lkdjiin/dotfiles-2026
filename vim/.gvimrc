" Retirer la toolbar
set guioptions-=T

" Retirer le menu
set guioptions-=m

set guitablabel=[%N]\ %t\ %M

colorscheme gruvbox
set bg=dark

let &colorcolumn=join(range(73,80),",")
highlight ColorColumn guibg=#404040

" Font -----------------------------------------------------------------

let g:font_size = 14

function ResetFont()
  let g:font_size = 14
  let &guifont = 'Monospace Regular 14'
endfunction

function ZoomFont(amount)
  let g:font_size += a:amount
  let &guifont = 'Monospace Regular ' . g:font_size
endfunction

nnoremap <F7> :call ZoomFont(2)<cr>
nnoremap <F8> :call ZoomFont(-2)<cr>
nnoremap <F10> :call ResetFont()<cr>
