vim.o.termguicolors = true
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end
vim.g.colors_name = "tokusa"

local set = vim.api.nvim_set_hl
local config = require("tokusa.config")
local opts = config.options

local bg = opts.transparent and "NONE" or "#0f1510"

-- minimam
set(0, "Normal", { fg = "#d7ffd7", bg = bg })
set(0, "Comment", { fg = "#5f7f62", italic = true })
set(0, "CursorLine", { bg = "#141c15" })
set(0, "LineNr", { fg = "#5f7f62" })
set(0, "CursorLineNr", { fg = "#5f7f62", bold = true })
set(0, "Statement", { fg = "#6fbf8a", bold = true })
set(0, "Keyword", { fg = "#DFAF7F", bold = true })

-- syntax
set(0, "String", { fg = "#a8d5a2" })
set(0, "Number", { fg = "#b7f7c1" })
set(0, "Boolean", { fg = "#b7f7c1" })
set(0, "Float", { fg = "#b7f7c1" })
set(0, "Constant", { fg = "#DE8F5D" })
set(0, "Function", { fg = "#AF7FDF", bold = true })
set(0, "Type", { fg = "#6fbf8a" })
set(0, "Identifier", { fg = "#d7ffd7" })
set(0, "PreProc", { fg = "#545E53" })
set(0, "Special", { fg = "#7fdfaf" })
set(0, "Error", { fg = "#ff6b6b", bold = true })
set(0, "Conditional", { fg = "#e8b4b8", bold = true })

-- treesitter
set(0, "@comment", { link = "Comment" })
set(0, "@string", { link = "String" })
set(0, "@string.escape", { fg = "#8fd39a" })
set(0, "@string.regex", { fg = "#a8d5a2" })
set(0, "@number", { link = "Number" })
set(0, "@boolean", { link = "Boolean" })
set(0, "@function", { link = "Function" })
set(0, "@function.call", { fg = "#7fdfcf" })
set(0, "@function.builtin", { fg = "#8fd39a" })
set(0, "@method", { fg = "#7fdfaf" })
set(0, "@method.call", { fg = "#7fdfcf" })
set(0, "@keyword", { link = "Keyword" })
set(0, "@keyword.function", { link = "Keyword" })
set(0, "@keyword.return", { fg = "#6fbf8a", bold = true })
set(0, "@keyword.operator", { fg = "#8fd39a" })
set(0, "@conditional", { fg = "#6fbf8a", bold = true })
set(0, "@repeat", { fg = "#6fbf8a", bold = true })
set(0, "@type", { link = "Type" })
set(0, "@type.builtin", { fg = "#6fbf8a" })
set(0, "@variable", { fg = "#d7ffd7" })
set(0, "@variable.builtin", { fg = "#8fd39a", italic = true })
set(0, "@parameter", { fg = "#c5f0c5" })
set(0, "@property", { fg = "#9fd5a5" })
set(0, "@field", { fg = "#9fd5a5" })
set(0, "@constant", { link = "Constant" })
set(0, "@constant.builtin", { fg = "#b7f7c1", bold = true })
set(0, "@operator", { fg = "#8fd39a" })
set(0, "@punctuation.bracket", { fg = "#5f7f62" })
set(0, "@punctuation.delimiter", { fg = "#5f7f62" })
set(0, "@punctuation.special", { fg = "#8fd39a" })
set(0, "@tag", { fg = "#6fbf8a" })
set(0, "@tag.attribute", { fg = "#a8d5a2" })
set(0, "@tag.delimiter", { fg = "#5f7f62" })
set(0, "@namespace", { fg = "#6fbf8a" })
set(0, "@function.macro", { fg = "#dbb88a", bold = true })
set(0, "@lsp.type.macro", { fg = "#dbb88a", bold = true })
set(0, "@attribute", { fg = "#c4a882" })
set(0, "@attribute.builtin", { fg = "#c4a882" })

set(0, "Visual", { bg = "#1b2a1c" })
set(0, "Search", { fg = "#0f1510", bg = "#8fd39a" })
set(0, "IncSearch", { fg = "#0f1510", bg = "#b7f7c1", bold = true })
set(0, "CurSearch", { link = "IncSearch" })

set(0, "Pmenu", { fg = "#d7ffd7", bg = "#121a13" })
set(0, "PmenuSel", { fg = "#0f1510", bg = "#8fd39a", bold = true })
set(0, "PmenuSbar", { bg = "#182318" })
set(0, "PmenuThumb", { bg = "#2a3b2b" })

set(0, "WinSeparator", { fg = "#223023" })

-- ui
set(0, "StatusLine", { fg = "#d7ffd7", bg = "#182318" })
set(0, "StatusLineNC", { fg = "#5f7f62", bg = "#121a13" })
set(0, "TabLine", { fg = "#5f7f62", bg = "#121a13" })
set(0, "TabLineSel", { fg = "#d7ffd7", bg = "#182318", bold = true })
set(0, "TabLineFill", { bg = "#0f1510" })
set(0, "NormalFloat", { fg = "#d7ffd7", bg = "#121a13" })
set(0, "FloatBorder", { fg = "#334a37", bg = "#121a13" })
set(0, "FloatTitle", { fg = "#8fd39a", bg = "#121a13", bold = true })
set(0, "MatchParen", { fg = "#b7f7c1", bg = "#2a3b2b", bold = true })
set(0, "Folded", { fg = "#5f7f62", bg = "#141c15" })
set(0, "FoldColumn", { fg = "#334a37", bg = "#0f1510" })
set(0, "SignColumn", { bg = "#0f1510" })
set(0, "ColorColumn", { bg = "#141c15" })
set(0, "VertSplit", { fg = "#223023" })
set(0, "Cursor", { fg = "#0f1510", bg = "#d7ffd7" })
set(0, "CursorColumn", { bg = "#141c15" })

set(0, "DiagnosticError", { fg = "#ff6b6b" })
set(0, "DiagnosticWarn", { fg = "#ffd166" })
set(0, "DiagnosticInfo", { fg = "#4dabf7" })
set(0, "DiagnosticHint", { fg = "#8fd39a" })

set(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#ff6b6b" })
set(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#ffd166" })
set(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#4dabf7" })
set(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#8fd39a" })

-- git/diff
set(0, "DiffAdd", { bg = "#1a2e1a" })
set(0, "DiffChange", { bg = "#2a2a1a" })
set(0, "DiffDelete", { fg = "#ff6b6b", bg = "#2a1a1a" })
set(0, "DiffText", { bg = "#3a3a2a", bold = true })
set(0, "Added", { fg = "#8fd39a" })
set(0, "Changed", { fg = "#ffd166" })
set(0, "Removed", { fg = "#ff6b6b" })

-- gitsigns
set(0, "GitSignsAdd", { fg = "#8fd39a" })
set(0, "GitSignsChange", { fg = "#ffd166" })
set(0, "GitSignsDelete", { fg = "#ff6b6b" })

-- LazyGit
set(0, "LazyGitPopup", { fg = "#d7ffd7", bg = "#121a13" })
set(0, "LazyGitPopupBorder", { fg = "#334a37", bg = "#121a13" })
set(0, "LazyGitPopupTitle", { fg = "#8fd39a", bg = "#121a13", bold = true })
set(0, "LazyGitPopupBorderTitle", { fg = "#8fd39a", bg = "#121a13", bold = true })

-- telescope
set(0, "TelescopeNormal", { fg = "#d7ffd7", bg = "#0f1510" })
set(0, "TelescopeBorder", { fg = "#334a37", bg = "#0f1510" })
set(0, "TelescopeTitle", { fg = "#8fd39a", bold = true })
set(0, "TelescopePromptNormal", { fg = "#d7ffd7", bg = "#121a13" })
set(0, "TelescopePromptBorder", { fg = "#334a37", bg = "#121a13" })
set(0, "TelescopePromptTitle", { fg = "#8fd39a", bg = "#121a13", bold = true })
set(0, "TelescopePromptPrefix", { fg = "#8fd39a" })
set(0, "TelescopePromptCounter", { fg = "#5f7f62" })
set(0, "TelescopeResultsNormal", { fg = "#d7ffd7", bg = "#0f1510" })
set(0, "TelescopeResultsBorder", { fg = "#334a37", bg = "#0f1510" })
set(0, "TelescopeResultsTitle", { fg = "#8fd39a", bold = true })
set(0, "TelescopePreviewNormal", { fg = "#d7ffd7", bg = "#0f1510" })
set(0, "TelescopePreviewBorder", { fg = "#334a37", bg = "#0f1510" })
set(0, "TelescopePreviewTitle", { fg = "#8fd39a", bold = true })
set(0, "TelescopeSelection", { fg = "#d7ffd7", bg = "#1b2a1c", bold = true })
set(0, "TelescopeSelectionCaret", { fg = "#8fd39a", bg = "#1b2a1c" })
set(0, "TelescopeMultiSelection", { fg = "#b7f7c1", bg = "#1b2a1c" })
set(0, "TelescopeMultiIcon", { fg = "#8fd39a" })
set(0, "TelescopeMatching", { fg = "#b7f7c1", bold = true })

-- etc...
set(0, "Debug", { fg = "#ae58f5" })
set(0, "Ignore", { fg = "#f5c833" })
