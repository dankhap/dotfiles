function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))

"fzf mappings
map <C-L> :noh<CR>
map <C-P> :GFiles<CR>
map <C-P><C-P> :Rg<CR>
" map <C-S-P> :Files<CR>
map <S-TAB> :Buffers<CR>

