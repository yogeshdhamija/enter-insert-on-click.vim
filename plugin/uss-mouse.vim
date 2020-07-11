if(exists("g:loaded_uss_mouse"))
    finish
endif
let g:loaded_uss_mouse = 1

set mouse=a
nnoremap <LeftMouse> <C-\><C-n><LeftMouse>
inoremap <LeftMouse> <C-\><C-n><LeftMouse>
nnoremap <silent> <LeftRelease> <C-\><C-n><LeftRelease>:call ussMouse#EnterInsert()<CR>
inoremap <silent> <LeftRelease> <C-\><C-n><LeftRelease>:call ussMouse#EnterInsert()<CR>
