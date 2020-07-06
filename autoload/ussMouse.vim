if(exists("g:autoloaded_uss_mouse"))
    finish
endif
let g:autoloaded_uss_mouse = 1

function! ussMouse#EnterInsertIfFileOrIfBottomOfTerminal() abort
    if ( getbufvar(bufname("%"), "&buftype", "NONE") != "terminal" ) 
                \ || (line('w$') >= line('$'))
        call s:enter_insert_after_cursor()
    endif
endfunction

function! s:enter_insert_after_cursor() abort
    if col('.') == col('$') - 1
        startinsert!
    else
        startinsert
    endif
endfunction
