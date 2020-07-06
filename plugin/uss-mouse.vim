if(exists("g:loaded_uss_mouse"))
    finish
endif
let g:loaded_uss_mouse = 1

nnoremap <LeftMouse> <C-\><C-n><LeftMouse>
inoremap <LeftMouse> <C-\><C-n><LeftMouse>
nnoremap <silent> <LeftRelease> <C-\><C-n><LeftRelease>:call ussMouse#EnterInsertIfFileOrIfBottomOfTerminal()<CR>
inoremap <silent> <LeftRelease> <C-\><C-n><LeftRelease>:call ussMouse#EnterInsertIfFileOrIfBottomOfTerminal()<CR>
