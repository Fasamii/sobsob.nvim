return function(cp)
	return {
		["@comment"]             = { link = "Comment" },

		["@variable"]            = { link = "Identifier" },

		["@string"]              = { link = "String" },
		["@character"]           = { link = "Character" },
		["@boolean"]             = { link = "Boolean" },
		["@boolean.false"]       = { fg = cp.syntax["false"] },
		["@boolean.true"]        = { fg = cp.syntax["true"] },
		["@number"]              = { link = "Number" },
		["@number.float"]        = { link = "Float" },

		["@keyword"]             = { link = "Keyword" },
		["@statement"]           = { link = "Statement" },
		["@conditional"]         = { link = "Conditional" },
		["@repeat"]              = { link = "Repeat" },

		["@type"]                = { link = "Type" },
		["@storageclass"]        = { link = "StorageClass" },

		["@function"]            = { link = "Function" },
		-- for bass and zsh
		["@function.flag.short"] = { link = "Function" },
		["@function.flag.long"]  = { link = "Function" },

		["@label"]               = { link = "Label" },

		["@operator"]            = { link = "Operator" },

		["@string.special"]      = { link = "Special" },
		["@character.special"]   = { link = "SpecialChar" },

		["@preproc"]             = { link = "PreProc" },

		["@macro"]               = { link = "Macro" },

	}
end
