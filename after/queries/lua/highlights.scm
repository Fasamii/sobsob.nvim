;; extends

((number) @number.float
  (#lua-match? @number.float "^[0-9]*%.[0-9]+"))
((number) @number.float
  (#lua-match? @number.float "[eE][+-]?[0-9]+"))
((number) @number.float
  (#lua-match? @number.float "^0[xX].*%.[0-9a-fA-F]+"))
((number) @number.float
  (#lua-match? @number.float "^0[xX].*[pP][+-]?[0-9]+"))
((number) @number
  (#not-lua-match? @number "%."))

((true) @boolean.true)
((false) @boolean.false)
