if(exists("g:autoloaded_uss_mouse"))
    finish
endif
let g:autoloaded_uss_mouse = 1

function! ussMouse#EnterInsert() abort
    if s:should_enter_insert() 
        call s:enter_insert()
    endif
endfunction

function! s:should_enter_insert() abort
    return s:is_not_visual_mode() && (!s:is_terminal_buffer() || s:is_last_line_of_buffer_visible())
endfunction

function! s:is_not_visual_mode() abort
    return mode() != 'v' && mode() != 'V' && mode() != ''
endfunction

function! s:is_last_line_of_buffer_visible() abort
    return line('w$') >= line('$')
endfunction

function! s:is_terminal_buffer() abort
    return getbufvar(bufname("%"), "&buftype", "NONE") == "terminal" 
endfunction

function! s:enter_insert() abort
    if(s:is_terminal_buffer() && !has('nvim'))
        norm i
    endif
    if col('.') == col('$') - 1
        startinsert!
    else
        startinsert
    endif
endfunction
