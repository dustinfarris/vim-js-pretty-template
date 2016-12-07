"============================================================================
" FILE: plugin/jspre.vim
" AUTHOR: Quramy <yosuke.kurami@gmail.com>
"============================================================================

scriptencoding utf-8

if exists('g:loaded_js_pretty_template_hbs')
  finish
endif
let g:loaded_js_pretty_template_hbs = 1
let s:save_cpo = &cpo
set cpo&vim

command! JsPreTmpl : call jspretmpl#loadAndApply()
command! JsPreTmplClear : call jspretmpl#clear()

let &cpo = s:save_cpo
unlet s:save_cpo
