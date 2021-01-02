" Random Useful Functions

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

function! KKCreateNewFileWithFileName()
  let l:filename=input('please input file name :')
  let l:filepath=system('bash','$HOME/.config/nvim/script/playground.sh ' . 'getFilePath ' . l:filename) 
  "execute ':vs ' . l:filepath
  execute ':e ' . l:filepath
endfunction


function! KKCreateNewFileWithFileType(ft)
  let l:filepath=system('bash','$HOME/.config/nvim/script/playground.sh ' . 'getFilePath ' . a:ft) 
  "execute ':vs ' . l:filepath
  execute ':e ' . l:filepath
endfunction
nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>


" When using `D` in the quickfix list, remove the item from the quickfix list.
function! RemoveQFItem()
  let curqfidx = line('.') - 1
  let qfall = getqflist()
  call remove(qfall, curqfidx)
  call setqflist(qfall, 'r')
  execute curqfidx + 1 . "cfirst"
  :copen
endfunction
:command! RemoveQFItem :call RemoveQFItem()
" Use map <buffer> to only map dd in the quickfix window. Requires +localmap
autocmd FileType qf map <buffer> D :RemoveQFItem<cr>

function! AppendCurrentLineToQuickfixFunc()
  call setqflist( getqflist() + [{'bufnr': bufnr('%'), 'lnum':line("."),'col':col(".") ,'text': getline(".") }])
  :copen
  :wincmd p
endfunction
command! AppendCurrentLineToQuickfix :call AppendCurrentLineToQuickfixFunc()
