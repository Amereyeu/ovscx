"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""    

" wrap around tag in visual mode
nnoremap <Leader>s vat      
" wrap selection with tag in visual mode    
nnoremap <Leader>w vatVSt       
" comment out line
nnoremap <Leader>l gcc
" comment out block          
nnoremap <Leader>b gcaB         
" select around block
nnoremap <Leader>r VaB 
" delete inside quotes
nnoremap <Leader>d di"
" switch tabs
nnoremap <TAB> :tabn<CR>  
nnoremap <S-TAB> :tabp<CR>
" close tab
nnoremap <Leader>c :tabc<CR>
" create new tab
nnoremap <Leader>f :tabnew<CR>
" switch to file explorer on side
nnoremap <Leader>e <C-w>h





