;; extends

((number_literal) @number.float
  (#lua-match? @number.float "^[0-9]*%.[0-9]+"))
((number_literal) @number.float
  (#lua-match? @number.float "[eE][+-]?[0-9]+"))
((number_literal) @number.float
  (#lua-match? @number.float "[fFlL]$"))
((number_literal) @number
  (#not-lua-match? @number "%."))

((true) @boolean.true
	(#set! "priority" 150))

((false) @boolean.false
	(#set! "priority" 150))
