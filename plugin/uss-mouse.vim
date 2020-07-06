" uss-mouse.vim - better mouse integration
" Maintainer: Yogesh Dhamija <ydhamija96.github.io>
" Version 0.1

function! s:enter_insert_after_cursor() abort
    if col('.') == col('$') - 1
        startinsert!
    else
        startinsert
    endif
endfunction

function! s:enter_insert_if_file_or_if_bottom_of_terminal() abort
    if ( getbufvar(bufname("%"), "&buftype", "NONE") != "terminal" ) 
                \ || (line('w$') >= line('$'))
        call s:enter_insert_after_cursor()
    endif
endfunction

nnoremap <LeftMouse> <C-\><C-n><LeftMouse>
inoremap <LeftMouse> <C-\><C-n><LeftMouse>
nnoremap <silent> <LeftRelease> <C-\><C-n><LeftRelease>:call <SID>enter_insert_if_file_or_if_bottom_of_terminal()<CR>
inoremap <silent> <LeftRelease> <C-\><C-n><LeftRelease>:call <SID>enter_insert_if_file_or_if_bottom_of_terminal()<CR>
