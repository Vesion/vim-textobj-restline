" vim-textobj-restline -- Text object for the rest of current line
" The 'rest' means from the cursor positon to the end
" Version: 0.0.1
" Author: Vesion, 2015


function! textobj#restline#select_a()
    if empty(getline('.'))
        return 0
    endif

    let startpos = getpos('.')

    normal! $
    let endpos = getpos('.')

    return ['v', startpos, endpos] 

endfunction


function! textobj#line#select_i()
    let line = getline('.')

    if empty(line)
        return 0
    endif

    let startpos = getpos('.')
    if line[startpos[2]-1] =~# '\s'
        normal! w
        let startpos = getpos('.')

    normal! g_
    let tail_pos = getpos('.')

    let non_blank_char_exists = getline('.')[startpos[2]-1] !~# '\s'
    return
    \ non_blank_char_exists
    \ ? ['v', startpos, endpos]
    \ : 0
endfunction
