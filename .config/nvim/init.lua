require("core.keymaps")

-- Set tab width
vim.opt.tabstop = 4          -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4       -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = false    -- Use actual tab characters instead of spaces
vim.opt.list = true          -- Show whitespace characters
vim.opt.listchars = { tab = ">-" } -- Visualize tabs with specific characters

-- Optional: Apply settings for specific file types
vim.cmd [[
  augroup FileTypeSpecific
    autocmd!
    autocmd FileType python setlocal tabstop=4 shiftwidth=4 noexpandtab
    autocmd FileType lua setlocal tabstop=4 shiftwidth=4 noexpandtab
  augroup END
]]

