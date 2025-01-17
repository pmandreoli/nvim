local util = require('packer.util')

vim.o.termguicolors = true
vim.o.background = "dark" -- or "light" for light mode

-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = util.join_paths(vim.fn.stdpath("cache"), "nightfox"),
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = false, -- Set terminal colors (vim.g.terminal_color_*)
    dim_inactive = false,   -- Non focused panes set to alternative background
		styles = {              -- Style to be applied to different syntax groups
			comments = "italic", -- change style of comments to be italic
			keywords = "bold", -- change style of keywords to be bold
			functions = "italic", -- styles can be a comma separated list
			numbers = "NONE",
			strings = "NONE",
			types = "NONE",
			variables = "NONE",
		},
    inverse = {             -- Inverse highlight for different types
      match_paren = true,
      visual = true,
      search = true,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  }
})

-- setup must be called before loading
vim.cmd("colorscheme gruvbox")

