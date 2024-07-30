set number
set hlsearch

colorscheme industry

set colorcolumn=81
highlight ColorColumn ctermbg=8


"set expandtab

set shiftwidth=2


set tabstop=2


set laststatus=2
set statusline+=%F

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


command! -bang -nargs=* F
  \ call fzf#vim#grep(
  \   '/home/user/ripgrep-14.0.3-x86_64-unknown-linux-musl/rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.75, 'relative': v:true, 'yoffset': 1.0 } }
let g:fzf_preview_window = ['down,50%', 'ctrl-/']

nnoremap <C-f> :F <C-r>"
vnoremap <C-f> y:F <C-r>"

xnoremap p pgvy
