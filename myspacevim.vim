function! myspacevim#before() abort
  set nocompatible
  filetype plugin on
  syntax on
  let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
  let R_pdfviewer = 'okular'
endfunction

function! myspacevim#after() abort
endfunction
