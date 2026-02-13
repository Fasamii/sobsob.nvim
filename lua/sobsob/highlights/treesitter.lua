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
		["@storageclass"]        = { link = "StorageClass" }, --TODO: Check if you typed that correctly

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

		-- ["@variable.member"]   = { fg = cp.syntax.variables },       -- obj.property → purple

		-- -- Special characters in strings
		-- ["@string.escape"]     = { fg = cp.colors.magenta },         -- \n, \t → magenta
		-- ["@character.special"] = { fg = cp.colors.magenta },

		-- ["@keyword.directive"]     = { fg = cp.syntax.preprocs },      -- #define, #include → teal
		-- ["@keyword.directive.define"] = { fg = cp.syntax.preprocs },   -- #define → teal
		--
		-- -- #include <stdio.h>
		-- ["@string.special.path"]   = { fg = cp.syntax.strings },       -- <stdio.h> → green
		--
		-- -- #ifdef, #else, #endif
		-- ["@keyword.conditional.directive"] = { fg = cp.syntax.preprocs },


		-- -- Text
		-- ["@text"]                      = { fg = cp.purple },
		-- ["@text.strong"]               = { fg = cp.purple, bold = true },
		-- ["@text.emphasis"]             = { fg = cp.purple, italic = true },
		-- ["@text.underline"]            = { fg = cp.purple, underline = true },
		-- ["@text.strike"]               = { fg = cp.purple, strikethrough = true },
		-- ["@text.title"]                = { fg = cp.green, bg = cp.red, bold = true },
		-- ["@text.literal"]              = { fg = cp.green },
		-- ["@text.uri"]                  = { fg = cp.cyan, underline = true },
		-- ["@text.math"]                 = { fg = cp.yellow },
		-- ["@text.reference"]            = { fg = cp.cyan },
		-- ["@text.environment"]          = { fg = cp.yellow },
		-- ["@text.environment.name"]     = { fg = cp.yellow, bold = true },
		-- ["@text.note"]                 = { fg = cp.white_dimm },
		-- ["@text.warning"]              = { fg = cp.warning },
		-- ["@text.danger"]               = { fg = cp.error },
		-- ["@text.diff.add"]             = { fg = cp.ok },
		-- ["@text.diff.delete"]          = { fg = cp.error },
		-- ["@comment.error"]             = { fg = cp.error },
		-- -- Keyword
		-- ["@keyword"]                   = { fg = cp.cyan },
		-- ["@keyword.function"]          = { fg = cp.cyan, bold = true },
		-- ["@keyword.operator"]          = { fg = cp.cyan },
		-- ["@keyword.return"]            = { fg = cp.cyan },
		-- -- Html
		-- ["@tag"]                       = { fg = cp.yellow },
		-- ["@tag.delimiter"]             = { fg = cp.violet },
		-- ["@tag.name"]                  = { fg = cp.yellow },
		-- ["@tag.builtin"]               = { fg = cp.yellow },
		-- -- XML
		-- ["@tag.attribute.xml"]         = { fg = cp.violet },
		-- ["@tag.xml"]                   = { fg = cp.yellow },
		-- ["@punctuation.delimiter.xml"] = { fg = cp.green },
		-- -- Statement
		-- ["@debug"]                     = { fg = cp.orange },
		-- ["@include"]                   = { fg = cp.cyan },
		-- ["@define"]                    = { fg = cp.cyan },
		-- -- Identifier
		-- ["@identifier"]                = { fg = cp.purple },
		-- ["@property"]                  = { fg = cp.purple },
		-- ["@variable"]                  = { fg = cp.purple },
		-- ["@variable.builtin"]          = { fg = cp.purple, bold = true },
		-- ["@variable.property"]         = { fg = cp.purple },
		-- ["@variable.parameter"]        = { fg = cp.purple },
		-- ["@variable.function"]         = { fg = cp.purple, bg = cp.red, bold = true },
		-- ["@variable.member.query"]     = { fg = cp.red, bold = true },
		-- -- Function
		-- ["@function"]                  = { fg = cp.purple, bold = true },
		-- ["@function.call"]             = { fg = cp.purple, bold = true },
		-- ["@function.builtin"]          = { fg = cp.purple, bold = true },
		-- ["@function.macro"]            = { fg = cp.purple, bold = true },
		-- ["@parameter"]                 = { fg = cp.cyan },
		-- ["@method.call"]               = { fg = cp.purple, bold = true },
		-- ["@method"]                    = { fg = cp.purple, bold = true },
		-- ["@constructor"]               = { fg = cp.magenta, bold = true },
		-- ["@constructor.lua"]           = { fg = cp.violet },
		-- -- Type
		-- ["@type"]                      = { fg = cp.yellow },
		-- ["@type.builtin"]              = { fg = cp.yellow, bold = true },
		-- ["@type.qualifier"]            = { fg = cp.yellow },
		-- ["@type.definition"]           = { fg = cp.yellow, bold = true },
		-- ["@namespace"]                 = { fg = cp.yellow },
		-- ["@constant"]                  = { fg = cp.magenta, bold = true },
		-- ["@constant.builtin"]          = { fg = cp.magenta, bold = true },
		-- ["@constant.macro"]            = { fg = cp.magenta, bold = true },
		-- -- Literal
		-- ["@null"]                      = { fg = cp.yellow },
		-- ["@string"]                    = { fg = cp.green },
		-- ["@string.regex"]              = { fg = cp.magenta },
		-- ["@string.escape"]             = { fg = cp.magenta },
		-- ["@string.special.url"]        = { fg = cp.cyan, underline = true },
		-- ["@number"]                    = { fg = cp.red },
		-- ["@float"]                     = { fg = cp.red },
		-- -- Punctuation
		-- ["@attribute"]                 = { fg = cp.purple, bold = true },
		-- ["@attribute.value"]           = { fg = cp.red },
		-- ["@tag.attribute.javascript"]  = { fg = cp.purple }, -- TODO: check if that is html or js
		-- ["@punctuation.bracket"]       = { fg = cp.violet },
		-- ["@punctuation.delimiter"]     = { fg = cp.violet },
		-- ["@punctuation.special"]       = { fg = cp.violet },
	}
end
