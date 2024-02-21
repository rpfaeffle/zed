(internal_module
    "namespace" @context
    name: (_) @name) @item

(enum_declaration
    "enum" @context
    name: (_) @name) @item

(type_alias_declaration
    "type" @context
    name: (_) @name) @item

(property_signature
  name: (_) @name
  "?"? @context
  type: (type_annotation
    ":" @context
    [
      (_)
      (predefined_type) @context
      (type_identifier) @context
      (generic_type) @context
      (function_type
        parameters: (formal_parameters
          "(" @context
          ")" @context)
        "=>" @context
        return_type: (_) @context)
    ]) @type) @item

(method_signature
  "get"? @context
  name: (_) @name
  parameters: (formal_parameters
    "(" @context
    ")" @context)
  return_type: (_) @context) @item

(function_declaration
    "async"? @context
    "function" @context
    name: (_) @name
    parameters: (formal_parameters
      "(" @context
      ")" @context)) @item

(interface_declaration
    "interface" @context
    name: (_) @name) @item

(export_statement
    (lexical_declaration
        ["let" "const"] @context
        (variable_declarator
            name: (_) @name) @item))

(statement_block
  (lexical_declaration
    ["let" "const"] @context
    (variable_declarator
      name: (_) @name) @item))

(program
    (lexical_declaration
        ["let" "const"] @context
        (variable_declarator
            name: (_) @name) @item))

(class_declaration
    "class" @context
    name: (_) @name) @item

(method_definition
    [
        "get"
        "set"
        "async"
        "*"
        "readonly"
        "static"
        (override_modifier)
        (accessibility_modifier)
    ]* @context
    name: (_) @name
    parameters: (formal_parameters
      "(" @context
      ")" @context)) @item

(public_field_definition
    [
        "declare"
        "readonly"
        "abstract"
        "static"
        (accessibility_modifier)
    ]* @context
    name: (_) @name) @item
