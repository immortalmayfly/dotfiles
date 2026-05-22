-- Border
require("full-border"):setup({
	type = ui.Border.ROUNDED,
})

-- Mux
require("mux"):setup({
	aliases = {
		eza_tree_1 = {
			previewer = "piper",
			args = {
				'cd "$1" && eza --oneline --tree --level 1 --color=always --icons=always --group-directories-first --no-quotes .',
			},
		},
		eza_tree_2 = {
			previewer = "piper",
			args = {
				'cd "$1" && eza --oneline --tree --level 2 --color=always --icons=always --group-directories-first --no-quotes .',
			},
		},
		eza_tree_3 = {
			previewer = "piper",
			args = {
				'cd "$1" && eza --oneline --tree --level 3 --color=always --icons=always --group-directories-first --no-quotes .',
			},
		},
		eza_tree_4 = {
			previewer = "piper",
			args = {
				'cd "$1" && eza --oneline --tree --level 4 --color=always --icons=always --group-directories-first --no-quotes .',
			},
		},
	},
})

-- DuckDB plugin configuration
require("duckdb"):setup({
	mode = "summarized",
	cache_size = 1000,
	row_id = false,
	minmax_column_width = 21,
	column_fit_factor = 10,
})

-- Initialize starship prompt
require("starship"):setup()
