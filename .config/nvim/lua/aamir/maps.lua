vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
vim.keymap.set("i", "<leader>c", "<Esc>")

-- New Windows
map("n", "<leader>v", "<CMD>vsplit<CR>")
map("n", "<leader>h", "<CMD>split<CR>")
map("n", "<leader>n", "<CMD>vnew<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

--Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find recent files" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find string in cwd" })
map("n", "<leader>fs", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
map("n", "<leader>fc", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })

--Back
map("n", "<leader>b", vim.cmd.Ex)

--Undotree
map("n", "<leader>u", "<cmd>lua require('undotree').toggle()<cr>")

-- Fugitive Keybindings in Lua
map('n', '<Leader>gs', ':Git status<CR>', { noremap = true, silent = true })
map('n', '<Leader>gc', ':Git commit<CR>', { noremap = true, silent = true })
map('n', '<Leader>gd', ':Git diff<CR>', { noremap = true, silent = true })
map('n', '<Leader>gl', ':Git log<CR>', { noremap = true, silent = true })
map('n', '<Leader>gb', ':Git blame<CR>', { noremap = true, silent = true })
map('n', '<Leader>gp', ':Git push<CR>', { noremap = true, silent = true })
