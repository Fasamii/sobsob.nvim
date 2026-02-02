;; extends

((float) @number.float)
((integer) @number)

((boolean) @boolean.true
  (#lua-match? @boolean.true "^[Tt][Rr][Uu][Ee]$"))
((boolean) @boolean.false
  (#lua-match? @boolean.false "^[Ff][Aa][Ll][Ss][Ee]$"))
