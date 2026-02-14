return function(cp)
	-- TODO: Try to define correctly all built in functions
	return {
		typescriptBlock                  = { fg = cp.colors.purple },

		typescriptIdentifier             = { link = "Identifier" },
		typescriptVariableDeclaration    = { link = "Identifier" },
		typescriptProp                   = { link = "Identifier" },
		["@variable.builtin.typescript"] = { link = "Identifier", bold = true },

		typescriptCastKeyword            = { link = "Keyword" },
		typescriptEnumKeyword            = { link = "Keyword" },

		typescriptIdentifierName         = { link = "Type" },
		typescriptTypeReference          = { link = "Type" },
		typescriptInterfaceName          = { link = "Type" },
		typescriptEnum                   = { link = "Type" },
		typescriptAliasDeclaration       = { link = "Type" },
		typescriptTypeParameter          = { link = "Type" },
		typescriptClassName              = { link = "Type" },
		typescriptClassHeritage          = { link = "Type" },

		typescriptArrayMethod            = { link = "Function" },
		typescriptConsoleMethod          = { link = "Function" },

		typescriptAssign                 = { link = "Operator" },
		typescriptGenericDefault         = { link = "Operator" },
		typescriptBinaryOp               = { link = "Operator" },

		typeScriptBraces                 = { link = "Delimiter" },
		typescriptTypeBracket            = { link = "Delimiter" },
		typescriptTypeBrackets           = { link = "Delimiter" },
		typescriptClassTypeParameter     = { link = "Delimiter" },
		typescriptParens                 = { link = "Delimiter" },
		typescriptTypeAnnotation         = { link = "Delimiter" },
		typescriptEndColons              = { link = "Delimiter" },
		typescriptObjectLiteral          = { link = "Delimiter" },
		typescriptObjectColon            = { link = "Delimiter" },


		["@type.builtin.typescript"] = { link = "Type" },
	}
end
