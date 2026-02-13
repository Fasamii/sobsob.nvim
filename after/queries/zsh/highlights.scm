; extends

((word) @boolean.true
  (#eq? @boolean.true "true"))

((word) @boolean.false
  (#eq? @boolean.false "false"))

; Match long flags 
((word) @function.flag.long
  (#match? @function.flag.long "^--.+"))

; Match short flags 
((word) @function.flag.short
  (#match? @function.flag.short "^-[^-]"))
