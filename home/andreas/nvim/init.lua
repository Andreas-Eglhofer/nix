vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.undofile = true

vim.opt.scrolloff = 4

vim.opt.wrap = false
vim.opt.mouse = "a"
vim.opt.confirm = true

vim.keymap.set("n", "<leader>ll", function()
  vim.cmd("write")
  vim.cmd("!cd %:p:h && latexmk -pdf %:t")
end)

vim.keymap.set("n", "<leader>lc", function()
  vim.cmd("!cd %:p:h && latexmk -c %:t")
end)
