;; extends

((floating_point_literal) @number.float)
((integer_literal) @number)

((boolean_literal) @boolean.true
  (#eq? @boolean.true "true"))
((boolean_literal) @boolean.false
  (#eq? @boolean.false "false"))
