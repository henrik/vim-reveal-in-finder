function! s:RevealInFinder()
  :silent! ! open -R %
  " For terminal Vim not to look messed up.
  :redraw!
endfunction

command! Reveal call <SID>RevealInFinder()
