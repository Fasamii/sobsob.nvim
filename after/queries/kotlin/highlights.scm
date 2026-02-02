;; extends

((real_literal) @number.float)
((integer_literal) @number)
((hex_literal) @number)
((bin_literal) @number)

((boolean_literal) @boolean.true
  (#eq? @boolean.true "true"))
((boolean_literal) @boolean.false
  (#eq? @boolean.false "false"))
