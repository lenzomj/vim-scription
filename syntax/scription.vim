if exists("b:current_syntax")
  finish
endif

syntax match scriptMeta "\v#.*$"

syntax match scriptKeys "\v^\\sp"  " Speaker
syntax match scriptKeys "\v^\\trs" " Transcript

syntax region scriptHead start=/\v---/ end=/\v---/ contains=scriptHeadAttr
syntax match scriptHeadAttr "\v^title:" contained


highlight link scriptKeys Keyword
highlight link scriptMeta Comment
highlight link scriptHead Comment

let b:current_syntax = "scription"
