" File: gitgrep.vim
" Author: Ali Aghareza <aghareza AT gmail DOT com>
" Modified by Christoffer Klang

if exists("g:loaded_gitgrep") || &cp
    finish
endif
let g:loaded_gitgrep = 1

if !exists('g:git_grep_command')
  let g:git_grep_command = 'git grep -n '
endif

if !exists('g:git_grep_no_map')
  nnoremap <silent> <Leader>gw :GitGrepWord<CR>
endif

function! s:GitGrep(terms)
  let expr = g:git_grep_command.a:terms
  cgetexpr system(expr)
  cwin
  echo 'Number of matches: ' . len(getqflist())
endfunction

function! s:GitGrepWord()
  call s:GitGrep('"'.expand("<cword>").'"')
endfunction

command! -nargs=0 GitGrepWord :call s:GitGrepWord()
command! -nargs=+ GitGrep     :call s:GitGrep(<q-args>)
