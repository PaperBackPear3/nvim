---------------------
-- Control family
---------------------
-- Ctrl F to format the file.
vim.keymap.set("n", "<C-F>", ":Format<cr>", { noremap = true, silent = true })
-- Ctrl E to clean up trailing whitespaces
vim.keymap.set("n", "<C-E>", ":%s/\\s*$//g<cr>", { noremap = true })
-- get out of term
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

---------------------
-- leader family
---------------------
-- buffer navigation
vim.keymap.set("n", "<leader>a", ":bprevious<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>s", ":bnext<cr>", { noremap = true, silent = true })

-- split windows
vim.keymap.set("n", "<leader>h", ":FocusSplitLeft<cr>", { silent = true })
vim.keymap.set("n", "<leader>j", ":FocusSplitDown<cr>", { silent = true })
vim.keymap.set("n", "<leader>k", ":FocusSplitUp<cr>", { silent = true })
vim.keymap.set("n", "<leader>l", ":FocusSplitRight<cr>", { silent = true })

-- toggle terminal
vim.keymap.set("n", "<leader>t", '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
vim.keymap.set("t", "<leader>t", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })

-- toggle lsp errors
vim.keymap.set("n", "<leader>e", "<cmd>TroubleToggle<cr>", { noremap = true, silent = true }) 

-- LSP searches
vim.keymap.set("n", "<leader>d", "<cmd>lua vim.lsp.buf.definition()<cr>", { noremap = true, silent = false })
