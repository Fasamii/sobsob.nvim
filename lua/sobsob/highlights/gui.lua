return function(cp)
	return {
		-- NETRW
		netrwTreeBar  = { fg = cp.violet },
		netrwPlain    = { fg = cp.purple },
		netrwDir      = { fg = cp.cyan },
		netrwClassify = { fg = cp.violet },
		netrwExe      = { fg = cp.yellow },


		-- GIT
		GitAdd                 = { fg = cp.git_add, bold = true },
		GitDel                 = { fg = cp.git_del, bold = true },
		GitMod                 = { fg = cp.git_mod, bold = true },

		-- WHICH-KEY
		WhichKeyNormal         = { bg = cp.black_dark },
		WhichKey               = { fg = cp.magenta, bold = true },
		WhichKeyDesc           = { fg = cp.purple },
		WhichKeyGroup          = { fg = cp.cyan },

		-- TELESCOPE
		TelescopeNormal        = { fg = cp.white, bg = "none" },
		TelescopeBorder        = { fg = cp.white_dark },
		TelescopeTitle         = { fg = cp.white },

		TelescopePromptNormal  = { fg = cp.purple },
		TelescopePromptCounter = { fg = cp.purple },

		TelescopeSelection     = { fg = cp.magenta, bold = true },
		TelescopeMatching      = { bg = cp.selection, bold = true },
		TelescopePreviewLine   = { bg = cp.search, fg = cp.bg_solid, bold = true },

		---------------------
		---- NvimDapView ----
		---------------------
		-- TODO: check what these are
		-- TODO: check highlight groups for nvim-dap define these and potentially link here instead of redefining
		-- TEST: check if that hi groups are being applied
		-- NvimDapViewBoolean                         = { fg = cp.pink },
		-- NvimDapViewControlDiwsconnect              = { fg = cp.pink },
		-- NvimDapViewControlNC                       = { fg = cp.pink },
		-- NvimDapViewControlPause                    = { fg = cp.pink },
		-- NvimDapViewControlPlay                     = { fg = cp.pink },
		-- NvimDapViewControlRunLast                  = { fg = cp.pink },
		-- NvimDapViewControlStepBack                 = { fg = cp.pink },
		-- NvimDapViewControlStepInto                 = { fg = cp.pink },
		-- NvimDapViewControlStepOut                  = { fg = cp.pink },
		-- NvimDapViewControlStepOver                 = { fg = cp.pink },
		-- NvimDapViewControlTerminate                = { fg = cp.pink },
		-- NvimDapViewExceptionFilterDisabled         = { fg = cp.pink },
		-- NvimDapViewExceptionFilterEnabled          = { fg = cp.pink },
		-- NvimDapViewFileName                        = { fg = cp.pink },
		-- NvimDapViewFloat                           = { fg = cp.pink },
		-- NvimDapViewFrameCurrent                    = { fg = cp.pink },
		-- NvimDapViewFunction                        = { fg = cp.pink },
		-- NvimDapViewLineNumber                      = { fg = cp.pink },
		-- NvimDapViewMissingData                     = { fg = cp.pink },
		-- NvimDapViewNumber                          = { fg = cp.pink },
		-- NvimDapViewSeparator                       = { fg = cp.pink },
		-- NvimDapViewString                          = { fg = cp.pink },
		-- NvimDapViewTabSelected                     = { fg = cp.pink },
		-- NvimDapViewTab                             = { fg = cp.pink },
		-- NvimDapViewThreadError                     = { fg = cp.pink },
		-- NvimDapViewThreadStopped                   = { fg = cp.pink },
		-- NvimDapViewThread                          = { fg = cp.pink },
		-- NvimDapViewWatchError                      = { fg = cp.pink },
		-- NvimDapViewWatchExpr                       = { fg = cp.pink },
		-- NvimDapViewWatchUpdated                    = { fg = cp.pink },
		---------------------------
		---- NvimDapView (END) ----
		---------------------------
	};
end
