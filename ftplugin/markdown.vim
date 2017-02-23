" backup local cwd
" and change it to the directory of the current file
let s:lcd = fnameescape(getcwd())
silent! exec "lcd" expand('%:p:h')

" detect shell and choose the command to find the textlint executable
if &shell =~# 'fish'
  let s:which_cmd = 'begin; set -lx PATH (npm bin --silent) $PATH; and which textlint; end'
else
  let s:which_cmd = 'PATH=$(npm bin --silent):$PATH && which textlint'
endif

" get the path of the textlint executable
" and set it as a checker for the current buffer
let s:textlint_path = system(s:which_cmd)
let b:syntastic_markdown_textlint_exec = substitute(s:textlint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
