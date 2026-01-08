local M = {}

M.defaults = {
	transparent = false,
}

-- setup() が呼ばれる前でも動作するようにデフォルト値を設定
M.options = vim.tbl_deep_extend("force", {}, M.defaults)

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

return M
