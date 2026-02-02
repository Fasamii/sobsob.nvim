;; extends

((float_node) @number.float)
((integer_node) @number)

((boolean_node) @boolean.true
  (#any-of? @boolean.true "true" "True" "TRUE" "yes" "Yes" "YES" "on" "On" "ON"))
((boolean_node) @boolean.false
  (#any-of? @boolean.false "false" "False" "FALSE" "no" "No" "NO" "off" "Off" "OFF"))
