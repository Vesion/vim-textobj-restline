# vim-textobj-restline

vim-textobj-restline
=================

A vim text object plugin for the rest of a line based on vim-textobj-user([https://github.com/kana/vim-textobj-user](https://github.com/kana/vim-textobj-user)).

Which means from the cursor postion to the end of current line.

Usage
-----
Select 'all' mapping `ar`, for the cursor postion to the end of current line, including any character like whitespace.

Select 'in' mapping `ir`, for the nearest non-blank character(forward) to the last non-blank character of current line.


Installation
------------
I recommend installing it via vundle ([https://github.com/gmarik/vundle](https://github.com/gmarik/vundle)):

    Plugin 'Vesion/vim-textobj-restline'
