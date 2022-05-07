
" 打开 24 位真彩色支持
set termguicolors
" 搜索的时候忽略大小字字母
set ignorecase
" 若搜索内容中有大写字母，则不再忽略大小写
set smartcase
" 高亮第80列
set colorcolumn=80
" 高亮光标所在行
set cursorline

" 跳转到上次退出到位置
autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$")
      \ |   exe "normal! g`\""
      \ | endif


color tender
" 此处对 tender 主题略做调整，大家可以去掉对比一下效果
" autocmd ColorScheme tender
" \ | hi Normal guibg=#000000
" \ | hi SignColumn guibg=#000000 "aa
" \ | hi StatusLine guibg=#444444 guifg=#b3deef

let g:NERDTreeMinimalUI = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeWinSize = 24

let g:ag_cli = 'rg'

nnoremap <leader>e :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<cr>

nnoremap <c-p> :call fzf#Open()<cr>

runtime vim.lua

" 使用 foldexpr 指定的方式折叠代码
set foldmethod=expr
" 使用 treesitter 根据语言语法折叠代码
set foldexpr=nvim_treesitter#foldexpr()
" 默认从第一级开始，大家可以去掉看有什么效果
set foldlevel=1


