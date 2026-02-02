;; extends

((float_literal) @number.float)
((integer_literal) @number)

((BUILTINIDENTIFIER) @boolean.true
  (#eq? @boolean.true "@true"))
((BUILTINIDENTIFIER) @boolean.false
  (#eq? @boolean.false "@false"))
