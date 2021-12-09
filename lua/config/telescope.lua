local utils = require('utils')

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
	defaults = {
		file_ignore_patterns = { 
			'Pictures/',
			'Drives/',
			'vpnconfigs/',
			'.git/'
		},

		layout_config = {
			width = 0.99,
			height = 0.99,
			preview_width = 0.50
		}
	},
	pickers = {
		find_files = {
			hidden = true
		},
		live_grep = {
			hidden = true
		},
		file_browser = {
			hidden = true
		}
	},
	extensions = {
		fzf = {
			fuzzy = true,                    -- false will only do exact matching
			override_generic_sorter = true,  -- override the generic sorter
			override_file_sorter = true,     -- override the file sorter
			case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		}
	},
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

-- KeyBindings
utils.map('n', '<leader>f',		'<cmd>Telescope		find_files<cr>')
utils.map('n', '<leader>gg',  	'<cmd>Telescope 	live_grep<cr>')
utils.map('n', '<leader>tt',  	'<cmd>Telescope 	treesitter<cr>')
utils.map('n', '<leader>b',   	'<cmd>Telescope 	buffers<cr>')
utils.map('n', '<leader>ee',  	'<cmd>Telescope 	file_browser<cr>')
utils.map('n', '<leader>ht',  	'<cmd>Telescope 	help_tags<cr>')

utils.map('n', '<leader>wf',  	'<cmd>Telescope 	find_files			cwd=%:p:h<cr>')
utils.map('n', '<leader>wg',  	'<cmd>Telescope 	live_grep			cwd=%:p:h<cr>')
utils.map('n', '<leader>we',  	'<cmd>Telescope 	file_browser		cwd=%:p:h<cr>')

utils.map('n', '<leader>rc',  	'<cmd>Telescope 	find_files			cwd=~/.config/nvim<cr>')
utils.map('n', '<leader>CS', 	'<cmd>Telescope 	colorscheme<cr>')

