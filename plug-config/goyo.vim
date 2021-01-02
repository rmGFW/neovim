" nmap <silent> <leader>z :Goyo<CR>
" autocmd User GoyoEnter set laststatus=0 
" autocmd User GoyoLeave set laststatus=2
" function! s:goyo_enter()
  
"   set wrap
"   set conceallevel=0
"   set tw=100
"   set noshowcmd
"   set scrolloff=999
"   set laststatus=0 

" endfunction

" function! s:goyo_leave()

"   set wrap!
"   set showcmd
"   set scrolloff=5
"   set laststatus=2

" endfunction

" autocmd! User GoyoEnter nested call <SID>goyo_enter()
" autocmd! User GoyoLeave nested call <SID>goyo_leave()

let g:goyo_width=180
let g:goyo_height=96
let g:goyo_linenr=1


autocmd! User GoyoEnter lua require('galaxyline').disable_galaxyline()
autocmd! User GoyoLeave lua require('galaxyline').galaxyline_augroup()
