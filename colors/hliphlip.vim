set background=dark
hi clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "sobsob"

lua require("sobsob").reload("hliphlip")
