" 基础设置
lua require('basic')
lua require('keybindings')
lua require('plugins')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-treesitter')



set background=dark
colorscheme sonokai



" windows problems

" 复制到windows剪贴板
" https://stackoverflow.com/questions/44480829/how-to-copy-to-clipboard-in-vim-of-bash-on-windows
autocmd TextYankPost * if v:event.operator ==# 'y' | call system('/mnt/c/Windows/System32/clip.exe', @0) | endif

" 1033 中文语言
" 2052 英文语言
augroup im_select
    autocmd!
    autocmd InsertLeave * silent !./im-select.exe 1033
    autocmd InsertEnter * silent !./im-select.exe 2052
    autocmd BufRead * silent !./im-select.exe 1033
    " autocmd CmdlineLeave * silent !./im-select.exe 1033
    " autocmd CmdlineEnter * silent !./im-select.exe 2052
augroup END
