" Name: mycolors
" Description: A very basic Vim colorscheme

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "dracula_cterm"

" --- UI ---
hi Normal       ctermfg=white     ctermbg=black
hi CursorLine   ctermbg=darkgray
hi LineNr       ctermfg=darkgray
hi CursorLineNr ctermfg=yellow
hi StatusLine   ctermfg=black     ctermbg=magenta
hi StatusLineNC ctermfg=darkgray  ctermbg=black

" --- Syntax ---
hi Comment      ctermfg=darkgray
hi Constant     ctermfg=cyan
hi String       ctermfg=green
hi Identifier   ctermfg=magenta
hi Statement    ctermfg=yellow
hi PreProc      ctermfg=lightmagenta
hi Type         ctermfg=blue
hi Special      ctermfg=lightcyan
hi Underlined   ctermfg=lightblue
hi Todo         ctermfg=black     ctermbg=yellow
