local M = {}

-- Define your colors
local colors = {
	nc = "#18181c",
	base = "#18181c",
	surface = "#18181c",
	overlay = "#18181c",
	muted = "#6e6c86",
	subtle = "#908caa",
	text = "#e0def4",
	love = "#eb6f92",
	gold = "#f6c177",
	rose = "#ebbcba",
	pine = "#31748f",
	foam = "#9ccfd8",
	iris = "#c4a7e7",
	leaf = "#95b1ac",
	highlight_low = "#494852",
	highlight_med = "#403d52",
	highlight_high = "#524f67",
	none = "NONE",
}

-- Apply highlights
local function set_highlights()
	vim.api.nvim_set_hl(0, "Normal", { bg = colors.base, fg = colors.text })
	vim.api.nvim_set_hl(0, "Comment", { fg = colors.muted, italic = true })
	vim.api.nvim_set_hl(0, "String", { fg = colors.rose })
	vim.api.nvim_set_hl(0, "Function", { fg = colors.pine })
	vim.api.nvim_set_hl(0, "Keyword", { fg = colors.love, bold = true })
	vim.api.nvim_set_hl(0, "Visual", { bg = colors.highlight_low })
	vim.api.nvim_set_hl(0, "LineNr", { fg = colors.subtle })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.gold, bold = true })
end

-- Load the theme
function M.load()
	vim.cmd("highlight clear")
	vim.o.background = "dark" -- or "light" for light themes
	vim.g.colors_name = "mytheme" -- Set the colorscheme name
	set_highlights() -- Apply highlights
end

return M
