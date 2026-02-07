return function(cp)
	return {
		["@keyword.directive.python"] = { link = "PreProc", bold = true },

		pythonClass = { fg = cp.syntax.types },



		-- ["@variable.builtin.python"] = { fg = cp.violet },
		-- pythonAttribute              = { fg = cp.purple },
	}
end
