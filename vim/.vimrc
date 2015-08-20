"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/micha/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/micha/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" My plugins
NeoBundle 'https://github.com/kien/ctrlp.vim'
NeoBundle 'https://github.com/ivalkeen/vim-ctrlp-tjump'
NeoBundle 'https://github.com/ervandew/ag'
NeoBundle 'https://github.com/yegappan/mru'
NeoBundle 'https://github.com/vim-scripts/gtags.vim'
NeoBundle 'https://github.com/bronson/vim-trailing-whitespace'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Files to ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|o|o\.d)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

colorscheme elflord

" Differentiate between .h (C) and .hh (CPP) headers
au BufRead,BufNewFile *.h set filetype=c

" Set spelling correction on
set spell spelllang=en_us
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

" CtrlP asssisting mappings
nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>
nmap <c-j> :CtrlP<CR><C-\>w
vmap <c-j> y:CtrlP<CR><C-\>c

