if exists("g:loaded_reveal_in_finder")
  finish
endif
let g:loaded_reveal_in_finder = 1

function! s:RevealInFinder()
  silent! ! open -R % || open %:p:h || open .
  " For terminal Vim not to look messed up.
  redraw!
endfunction

command! Reveal call <SID>RevealInFinder()
