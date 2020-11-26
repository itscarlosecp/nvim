"
"    _____        __
"   /_  _/___  (_) /_    __(_)___ ___
"    / // __ \/ / __/\  / / / __ `__ \
"  _/ // / / / / /__\ \/ / / / / / / /
" /___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
"
" =========================================================================== "
" = * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * = "
" =========================================================================== "
"
" Welcome to my Nvim init.vim config file. I used to be a Visual Studio Code
" power user, until I woke up (JK).
"
" I've been using Neovim for a few months, so I'm not a pro or anything like
" that, but I like my config, I hope it would be usefull for someone how's
" starting with vim too.
"
" =========================================================================== "
"
"   * Github Username: itscarlosecp
"   * Repository: https://github.com/itscarlosecp/nvim
"
" =========================================================================== "
" = * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * = "
" =========================================================================== "


" =========================================================================== "
" =========================== Indentation & Fonts =========================== "
" =========================================================================== "

set tabstop=4
set shiftwidth=4
set softtabstop=4

set noexpandtab
set smartindent
set linebreak

set relativenumber
set number
set encoding=utf8
set guifont=Cascadia\ Code\ Nerd\ Font:h11


" =========================================================================== "
" ============================= Buffers & Tabs ============================== "
" =========================================================================== "

set splitright


" =========================================================================== "
" ============================ Linting & Styling ============================ "
" =========================================================================== "

" Disable Python space errors
let g:python_highlight_space_errors = 0

" Prettier config
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
let g:prettier#config#single_quote = 'true'
let g:prettier#config#jsx_single_quote = 'true'
let g:prettier#config#use_tabs = 'true'
let g:prettier#config#semi = 'false'

" Emmet Configuration
let g:user_emmet_mode='a'
" Remapping just Emmet's leader to ',' so the emmet command is ';;'
let g:user_emmet_leader_key=','


" =========================================================================== "
" ========================== Plugins Installation =========================== "
" =========================================================================== "

call plug#begin('~/.nvim/plugged')

" Code "
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
Plug 'tell-k/vim-autopep8'
Plug 'Yggdroot/indentLine'

" Language Support "
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components'

" Styling"
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Vim Behaviour "
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()


" =========================================================================== "
" =========================== Theming & Asteticts =========================== "
" =========================================================================== "

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE


" =========================================================================== "
" ========================== Plugins Configuration ========================== "
" =========================================================================== "

" (NERDTree has been replaced by Coc Explorer)
" ========== NERDTree ========== "

" NERDTree Configuration
nmap <C-e> :NERDTreeToggle<CR>
vmap ++ <plug> NERDCommenterToggle
nmap ++ <plug> NERDCommenterToggle
let NERDTreeMinimalUI=1

" Open NERDTree automatically on start
" autocmd vimenter * NERDTree

" Close NERDTree if there's no file opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" =========================================================================== "
" ======================= Conquer of Completion (Coc) ======================= "
" =========================================================================== "

let g:coc_global_extensions = [
            \ 'coc-pairs',
            \ 'coc-tslint',
            \ 'coc-tsserver',
            \ 'coc-json',
            \ 'coc-prettier',
            \ ]

" All of this is Coc configuration (copiend from Github repo)
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
    " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.3 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" =========================================================================== "
" =============================== Coc Explorer ============================== "
" =========================================================================== "

" noremap <C-e> :CocCommand explorer<CR>
" autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer')

" augroup MyCocExplorer
" autocmd!
" autocmd VimEnter * sil! au! FileExplorer *
" autocmd BufEnter * let d = expand('%') | if isdirectory(d) | bd | exe 'CocCommand explorer ' . d | endif
" augroup END


" =========================================================================== "
" =============================== Vim Airline =============================== "
" =========================================================================== "

" Airline Configuration
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:airline_section_c = ''
let g:airline_section_y = ''


" =========================================================================== "
" ================================= Others ================================== "
" =========================================================================== "

let g:indentLine_char = '|'
let g:indentLine_color_term = 239


" =========================================================================== "
" ============================= Custom Keybinds ============================= "
" =========================================================================== "

inoremap jj <Esc>
let mapleader=" "

function! SearchFile()
    :! git add .
    :GFiles
endfunction

nmap <C-P> :call SearchFile()<Return>

nnoremap <C-q> :tabclose<CR>

nnoremap <leader>c :e ~/.config/nvim/init.vim<CR>

