;; extends

((number_literal) @number.float
  (#lua-match? @number.float "^[0-9]*%.[0-9]+"))
((number_literal) @number.float
  (#lua-match? @number.float "[eE][+-]?[0-9]+"))
((number_literal) @number.float
  (#lua-match? @number.float "[fF]$"))
((number_literal) @number
  (#not-lua-match? @number "%."))

(escape_sequence) @string.escape
(char_literal (escape_sequence) @character.special)

((true) @boolean.true)
((false) @boolean.false)
