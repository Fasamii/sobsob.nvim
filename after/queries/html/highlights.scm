;; Event handler attributes (inline JavaScript)
((attribute
  (attribute_name) @_attr
  (quoted_attribute_value) @function)
 (#lua-match? @_attr "^on")
 (#set! "priority" 130))
