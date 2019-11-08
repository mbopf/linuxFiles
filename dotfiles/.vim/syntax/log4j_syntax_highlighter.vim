" Vim syntax file
" " Language: log4j log files
" " Maintainer: Shivendra Panicker
" " Latest Revision: September 5 2015 
if exists("b:current_syntax")
  finish
  endif
syn match text '/^\w+$/'
syn region celDescBlock start="{" end="}" fold transparent

syn keyword loglevelf contained FATAL
syn match fatalstatement "FATAL.*$" contains=loglevelf

syn keyword loglevele contained ERROR
syn match errorstatement "ERROR.*$" contains=loglevele

syn keyword loglevelw contained WARN
syn match warnstatement "WARN.*$" contains=loglevelw

syn keyword logleveli contained INFO
syn match infostatement "INFO.*$" contains=logleveli

syn keyword logleveld contained DEBUG
syn match debugstatement "DEBUG.*$" contains=logleveld

let b:current_syntax = "logs"
hi def link errorstatement Error
hi def link fatalstatement Error
hi def link warnstatement Todo
hi def link infostatement Identifier
hi def link debugstatement Debug
