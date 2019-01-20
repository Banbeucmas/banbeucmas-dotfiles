"                                 ___     
"        ___        ___          /__/\    
"       /__/\      /  /\        |  |::\   
"       \  \:\    /  /:/        |  |:|:\  
"        \  \:\  /__/::\      __|__|:|\:\ 
"    ___  \__\:\ \__\/\:\__  /__/::::| \:\
"   /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/
"   \  \:\|  |:|     \__\::/  \  \:\      
"    \  \:\__|:|     /__/:/    \  \:\     
"     \__\::::/      \__\/      \  \:\    
"         ~~~~                   \__\/    

 " Set compatibility to Vim only.
set nocompatible

"Always show current position
set ruler

" Turn on syntax highlighting.
syntax on

set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

let s:p = { 'normal': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} , 'inactive': {} }
let s:p.normal = {
            \    'left': [ [ '#ffffff', '#5f875f'], [ '#c5c8c6', '#282a2e'] ],
            \    'right':  [ [ '#ffffff', '#5f875f'], [ '#c5c8c6', '#282a2e'] ],
            \    'middle':  [ ['#bcbcbc', '#373b41', '' ] ],
            \ }

let s:p.insert = {
            \   'left': [ [ '#ffffff', '#456887'], s:p.normal.left[1] ],
            \    'right':  [ [ '#ffffff', '#456887'], s:p.normal.left[1] ],
            \ }
let s:p.replace = {
            \    'left':  [ [ '#ffffff', '#5f5f87'], s:p.normal.left[1] ],
            \    'right':  [ [ '#ffffff', '#5f5f87'], s:p.normal.left[1] ],
            \ }

let s:p.visual = {
            \    'left': [ [ '#ffffff', '#cc6666'], s:p.normal.left[1] ],
            \    'right': [ [ '#ffffff', '#cc6666'], s:p.normal.left[1] ],
            \ }

let s:p.tabline = {
            \    'left': [ [ '#bcbcbc', '#282a2e'] ],
            \    'middle': s:p.normal.middle,
            \    'tabsel':  [ [ '#ffffff', '#5f875f'] ],
            \ }

let s:p.inactive = {
            \    'left': [ ['#707880', '#303030'] ],
            \    'right': [ ['#707880', '#303030'] ],
            \ }

let g:lightline#colorscheme#hybridmodified#palette = lightline#colorscheme#fill(s:p)
let g:lightline = { 'colorscheme': 'hybridmodified' }


" Turn off modelines
set modelines=0

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=80
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Remove unecessary stuff 
set noshowmode

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Display options
set showmode
set showcmd
set cmdheight=1

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
"set list
"set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number
highlight LineNr ctermfg=black



" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text
" 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100
