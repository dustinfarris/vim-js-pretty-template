"============================================================================
" FILE: plugin/jspre.vim
" AUTHOR: Quramy <yosuke.kurami@gmail.com>
"============================================================================

scriptencoding utf-8

if exists('g:loaded_js_pretty_template')
  finish
endif
let g:loaded_js_pretty_template = 1
let s:save_cpo = &cpo
set cpo&vim

command! -nargs=+ -complete=filetype JsPreTmpl : call jspretmpl#loadAndApply(<f-args>)
command! JsPreTmplClear : call jspretmpl#clear()

let &cpo = s:save_cpo
unlet s:save_cpo
