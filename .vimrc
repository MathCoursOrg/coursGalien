execute pathogen#infect()

syntax enable
filetype plugin indent on

set shellslash
set noexpandtab
set number

let g:tex_flavor='latex'

set sw=2
set iskeyword+=:

set guifont=Monospace\ 13

let mapleader = ","
let g:vim_markdown_math = 1 "Pour un affichage plus propre des maths dans les markdowns

"Le classique :
nnoremap <leader>ss :w<CR>

"Éditer rapidement le vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>c :close<cr>

"Sourcer le vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" Encore un essai 
"Quitter plus rapidement le mode édition 

inoremap nr <esc>
"Apprentissage
inoremap <esc> <nop>

"Quitter vim
nnoremap <leader>x :xa<cr>
"Supprimer le contenu de la prochaine parenthèse, et supprimer son contenu
"pour le remplacer
onoremap il( :<c-u>normal! F)vi(<cr>

augroup coursGallienMarkdown
  autocmd BufNewFile,BufRead *.md nnoremap <buffer> <leader>c :!pandoc --mathjax -t revealjs -s % -o ../presentations/%<.html -V revealjs-url=/home/fabien/cours\ Gallien/Cours/reveal.js -V theme=solarized<cr>
  autocmd BufNewFile,BufRead *.md setlocal tw=80
  autocmd BufNewFile *.md :r ~/.vim/templates/md.tpl
  autocmd BufNewFile,BufRead *.md nnoremap <buffer> <leader>p :w<cr><esc>:!pandoc --number-sections --toc -t latex+grid_tables -s % -o ../pdf/%<.pdf<cr>
  autocmd BufNewFile,BufRead *.md let g:table_mode_corner='|'
  autocmd BufNewFile,BufRead *.md nnoremap <buffer> <leader>t :TableModeToggle
augroup END

colorscheme Tomorrow-Night-Eighties
