" vim-textobj-restline -- Text object for the rest of current line
" The 'rest' means from the cursor positon to the end
" Version: 0.0.1
" Author: Vesion, 2015


if exists('g:loaded_textobj_restline')
    finish
endif


call textobj#user#plugin('restline', {
\      'rest': {
\        'select-a': 'ar', 'select-a-function': 'textobj#restline#select_a',
\        'select-i': 'ir', 'select-i-function': 'textobj#restline#select_i',
\      },
\    })


let g:loaded_textobj_restline = 1
