if(exists("g:loaded_enter_insert_on_click"))
    finish
endif
let g:loaded_enter_insert_on_click = 1

set mouse=a
nnoremap <silent> <LeftRelease> <LeftRelease>:call enterInsertOnClick#EnterInsert()<CR>
