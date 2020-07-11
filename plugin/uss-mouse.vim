if(exists("g:loaded_uss_mouse"))
    finish
endif
let g:loaded_uss_mouse = 1

set mouse=a
nnoremap <silent> <LeftRelease> <LeftRelease>:call ussMouse#EnterInsert()<CR>
