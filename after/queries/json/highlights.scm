;; extends

((number) @number.float
  (#lua-match? @number.float "^-?[0-9]*%.[0-9]+"))
((number) @number.float
  (#lua-match? @number.float "[eE][+-]?[0-9]+"))
((number) @number
  (#not-lua-match? @number "%."))

((true) @boolean.true)
((false) @boolean.false)
