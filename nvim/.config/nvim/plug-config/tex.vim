function AddItem()
  if searchpair('\\begin{itemize}', '', '\\end{itemize}', '')
    return "\\item "
  else
    return ""
  endif
endfunction

inoremap <expr><buffer> <CR> "\r".AddItem()
nnoremap <expr><buffer> o "o".AddItem()
nnoremap <expr><buffer> O "O".AddItem()
autocmd BufRead,BufNewFile   *.tex setlocal spell spelllang=en_us
