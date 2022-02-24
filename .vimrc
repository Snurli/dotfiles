" ------------------------------------------------------------
" Load plugins
" ------------------------------------------------------------

set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=.vim/bundle/Vundle.vim

" Plugins will be downloaded under the specified directory.
call vundle#begin('.vim/plugged')

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Colorschemes                  
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'cocopon/iceberg.vim'    
Plugin 'arcticicestudio/nord-vim'
Plugin 'sjl/badwolf'            
Plugin 'lifepillar/vim-solarized8'
Plugin 'scheakur/vim-scheakur'  
Plugin 'Badacadabra/vim-archery'
Plugin 'sainnhe/sonokai'        

" PloyGlot
Plugin 'sheerun/vim-polyglot'

" Auto Pairs
Plugin 'jiangmiao/auto-pairs'   " Auto Pairs

" NERDTree
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Tagbar
Plugin 'preservim/tagbar'

" vim-fswitch
Plugin 'derekwyatt/vim-fswitch'

" Airline
Plugin 'vim-airline/vim-airline'

" YouCompleteMe
Plugin 'ycm-core/YouCompleteMe'

" Async tasks
Plugin 'skywind3000/asynctasks.vim'
Plugin 'skywind3000/asyncrun.vim'

" Vim fugitive
Plugin 'tpope/vim-fugitive'

" Vim obsession
Plugin 'tpope/vim-obsession'

" Vim commentary
Plugin 'tpope/vim-commentary'

" Vim commentary
Plugin 'tpope/vim-surround'

" Vim current word
Plugin 'dominikduda/vim_current_word'

" Treesitter
Plugin 'nvim-treesitter/nvim-treesitter'

" Google test
Plugin 'alepez/vim-gtest'

" Targets 
Plugin 'wellle/targets.vim'

" Move 
Plugin 'matze/vim-move'

" Multicursor 
Plugin 'mg979/vim-visual-multi'

" Macroeditor 
Plugin 'dohsimpson/vim-macroeditor'

" Visualstar 
Plugin 'thinca/vim-visualstar'

" Telescope
" Plugin 'nvim-lua/popup.nvim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'nvim-telescope/telescope-fzf-writer.nvim'
Plugin 'nvim-telescope/telescope-fzf-native.nvim'
Plugin 'nvim-telescope/telescope-project.nvim'
Plugin 'kyazdani42/nvim-web-devicons'

" Checklist
Plugin 'evansalter/vim-checklist'

" Jupyter vim
Plugin 'jupyter-vim/jupyter-vim'

" VIm cpyvke
Plugin 'ipselium/vim-cpyvke'

" List ends here. Plugins become visible to Vim after this call.
call vundle#end()
filetype plugin indent on

" ------------------------------------------------------------
" Ctrlp 
" ------------------------------------------------------------
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ------------------------------------------------------------
" auto-pairs configuration
" ------------------------------------------------------------

let g:AutoPairsShortcutToggle = '<C-P>'


" ------------------------------------------------------------
" NERDTree configuration
" ------------------------------------------------------------

let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 0
let NERDTreeMinimalMenu = 1
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 31

"Git NERDTree
let g:NERDTreeGitStatusConcealBrackets = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'>',
                \ 'Staged'    :'>',
                \ 'Untracked' :'>',
                \ 'Renamed'   :'>',
                \ 'Unmerged'  :'>',
                \ 'Deleted'   :'>',
                \ 'Dirty'     :'>',
                \ 'Ignored'   :'>',
                \ 'Clean'     :'>',
                \ 'Unknown'   :'>',
                \ }


" ------------------------------------------------------------
" tagbar configuration
" ------------------------------------------------------------

let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_position = 'botright vertical'


" ------------------------------------------------------------
" ctrlsf configuration
" ------------------------------------------------------------

let g:ctrlsf_backend = 'ack'
let g:ctrlsf_auto_close = { "normal": 0, "compact": 0 }
let g:ctrlsf_auto_focus = { "at": "start" }
let g:ctrlsf_auto_preview = 0
let g:ctrlsf_case_sensitive = 'smart'
let g:ctrlsf_default_view = 'normal'
let g:ctrlsf_regex_pattern = 0
let g:ctrlsf_position = 'right'
let g:ctrlsf_winsize = '46'
let g:ctrlsf_default_root = 'cwd'   " projcet

" ------------------------------------------------------------
" fswitch configuration
" ------------------------------------------------------------
"
" Set fswichdst and fswitchloc variables when BufEnter event takes place
" on a file whose name matches {*.cpp}.

au! BufEnter *.cpp let b:fswitchdst = 'hpp,h'
au! BufEnter *.h   let b:fswitchdst = 'cpp,c'

" fswitchdst  - Denotes the files extensions that is the target extension of
"               the current file's companion file.
"
" fswitchlocs - Contains a set of directories that indicate directory names 
"               that should be formulated when trying to find the alternate
"               file.

" ------------------------------------------------------------
" async task configuration
" ------------------------------------------------------------

let g:asyncrun_open = 12

" ------------------------------------------------------------
" airline
" ------------------------------------------------------------

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0

" ------------------------------------------------------------
" YouCompleteMe
" ------------------------------------------------------------
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_python_interpreter_path = '/usr/bin/python3'
let g:python3_host_prog = '/usr/bin/python3'
" let g:python_host_prog = '/usr/bin/python'
" let g:ycm_log_level='debug'
" let g:ycm_clangd_uses_ycmd_caching = 0
" let g:ycm_use_clangd = 1
" let g:ycm_clangd_binary_path = exepath("clangd")


" ------------------------------------------------------------
" vim-protodef configuration 
" ------------------------------------------------------------

nmap <buffer> <silent> <leader> ,PP
nmap <buffer> <silent> <leader> ,PN

" NOTE: This doesn't seem to disable the sorting.
let g:disable_protodef_sorting = 1

" ------------------------------------------------------------
" Telescope
" ------------------------------------------------------------

" ------------------------------------------------------------
" Google test
" ------------------------------------------------------------

let g:gtest#gtest_command = "/home/schnurli/gradientech/software/m13---control-fw/build_host/firmwareUnitTest"

" ------------------------------------------------------------
" Vim configuration
" ------------------------------------------------------------

set nu                  " Enable line numbers
syntax on               " Enable synax highlighting
set incsearch           " Enable incremental search
set nohlsearch            " Enable highlight search
set splitbelow          " Always split below"
set mouse=a             " Enable mouse drag on window splits
set tabstop=4           " How many columns of whitespace a \t is worth
set shiftwidth=4        " How many columns of whitespace a “level of indentation” is worth
set expandtab           " Use spaces when tabbing
set scrolloff=8
set updatetime=500
set relativenumber
set termguicolors

if !has('nvim')
    set termwinsize=12x0    " Set terminal size
endif

let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1
let g:nord_uniform_status_lines = 1
let g:nord_uniform_diff_background = 1
let g:nord_cursor_line_number_background = 1
colorscheme nord    " Set color scheme
set bg=dark     " Set background 
hi Normal guibg=NONE ctermbg=NONE

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

" ------------------------------------------------------------
" Key mappings
" ------------------------------------------------------------

" General
nmap        <C-B>         :buffers<CR>
nmap        <leader>t     :split<CR> :term<CR> :resize 8<CR> i

" Copy
nmap        <C-S-C>       :\"+y

" NERDTree
nmap        <F2>      :NERDTreeToggle<CR>

" NERDTree
nmap        <F3>      :copen<CR>

" tagbar
nmap        <F8>      :TagbarToggle<CR>

" ctrlds
nmap        <C-F>f    <Plug>CtrlSFPrompt
xmap        <C-F>f    <Plug>CtrlSFVwordPath
nnoremap    <C-F>t    :CtrlSFToggle<CR>
inoremap    <C-F>t    <Esc>:CtrlSFToggle<CR>

" Window opertations
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>s :wincmd s<CR>
nnoremap <leader>v :wincmd v<CR>
nnoremap <leader>o :wincmd o<CR>

" fswitch
nmap        <C-Z>     :vsplit <bar> :wincmd l <bar> :FSRight<CR>

" Search and replace
vnoremap <C-F>r "hy:%s/<C-r>h//gc<left><left><left>
nnoremap <C-F>r :%s/<c-r><c-w>//gc<left><left><left>

" YCM
nnoremap <C-G> :YcmCompleter GoTo<CR>
nnoremap <C-H> :YcmCompleter GoToReferences<CR>

" Jump to function start
nnoremap <C-K> [[
nnoremap <C-J> ]]

" Copy lines
vnoremap <A-S-j> :t'>+1<CR>
vnoremap <A-S-k> :t'>-1<CR>

" Async tasks
noremap <silent><f4> :AsyncTask collect-all<CR>
noremap <silent><f5> :AsyncTask file-build<CR>
noremap <silent><f6> :AsyncTask file-transfer<CR>

" Git
nmap <leader>gs :G<CR>
nmap <leader>gd :Git diff<CR>
nmap <leader>gt :Git difftool<CR>
nmap <leader>gb :Git blame<CR>
nmap <leader>gg :GitGutterQuickFix<CR>:copen<CR>

nmap <leader>gj <Plug>(GitGutterNextHunk)
nmap <leader>gk <Plug>(GitGutterPrevHunk)
nmap <leader>ggp <Plug>(GitGutterPreviewHunk)
nmap <leader>ggu <Plug>(GitGutterUndoHunk)
nmap <leader>ggs <Plug>(GitGutterStageHunk)

" Google test
nmap <leader>tj :GTestNext<CR>
nmap <leader>tk :GTestPrev<CR>
nmap <leader>tt :GTestRunUnderCursor<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fs <cmd>Telescope grep_string<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

" Checklist
nnoremap <leader>ct :ChecklistToggleCheckbox<cr>
vnoremap <leader>ct :ChecklistToggleCheckbox<cr>

