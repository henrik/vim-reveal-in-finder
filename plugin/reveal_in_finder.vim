if exists("g:loaded_reveal_in_finder")
  finish
endif
let g:loaded_reveal_in_finder = 1

function! s:RevealInFinder()
  let s:command = "open ."
  if filereadable(expand("%"))
    let s:command = "open -R %"
  elseif getftype(expand("%:p:h")) == "dir"
    let s:command = "open -a Finder %:p:h"
  endif
  execute ':silent! !' . s:command
  " For terminal Vim not to look messed up.
  redraw!
endfunction

command! Reveal call <SID>RevealInFinder()
