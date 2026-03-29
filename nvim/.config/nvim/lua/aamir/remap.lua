vim.g.mapleader = " "

-- Helper function to map keys easily

local function map(mode, lhs, rhs, opts)
	local options = { silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, lhs, rhs, options)
end

-- Save and Quit
map("n", "<leader>w", "<CMD>update<CR>", { desc = "Save file" })
map("n", "<leader>q", "<CMD>q<CR>", { desc = "Quit without save" })

-- Insert new line without insert mode
map("n", "<CR>", "m`o<Esc>``", { desc = "Insert line below without leaving normal mode" })
map("n", "<S-CR>", "m`O<Esc>``", { desc = "Insert line above without leaving normal mode" })

-- Split Windows
map("n", "<leader>v", "<CMD>vsplit<CR>", { desc = "Split vertically" })
map("n", "<leader>h", "<CMD>split<CR>", { desc = "Split horizontally" })
map("n", "<leader>n", "<CMD>vnew<CR>", { desc = "New vertical split" })

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

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "List buffers" })
map("n", "<leader>fs", "<cmd>Telescope git_status<cr>", { desc = "Git status" })
map("n", "<leader>fc", "<cmd>Telescope git_commits<cr>", { desc = "Git commits" })
map("n", "<leader>fbh", "<cmd>Telescope git_branches<cr>", { desc = "Git branches" })

-- Back to netrw or file browser
map("n", "<leader>b", vim.cmd.Ex, { desc = "File browser" })

-- Undotree
map("n", "<leader>u", function()
	require("undotree").toggle()
end, { desc = "Toggle Undotree" })

-- Fugitive
map("n", "<Leader>gs", ":Git status<CR>", { desc = "Git status" })
map("n", "<Leader>ga", ":Git add .<CR>", { desc = "Git add all" })
map("n", "<Leader>gc", ":Git commit<CR>", { desc = "Git commit" })
map("n", "<Leader>gd", ":Git diff<CR>", { desc = "Git diff" })
map("n", "<Leader>gl", ":Git log<CR>", { desc = "Git log" })
map("n", "<Leader>gb", ":Git blame<CR>", { desc = "Git blame" })
map("n", "<Leader>gp", ":Git push<CR>", { desc = "Git push" })
map("n", "<leader>gi", ":Git<CR>", { desc = "Open Fugitive Git status" })

-- LSP
map("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
map("n", "gd", vim.lsp.buf.definition, { desc = "LSP Go to Definition" })
map({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

-- Toggle Terminal
map("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })

-- Toggle NeoTree
map("n", "<leader>t", "<cmd>Neotree filesystem toggle<CR>", {})

-- Next / Previous buffer : for buffer line plugin
-- map("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
-- map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
-- map("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>")
-- map("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>")
-- map("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>")
-- map("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>")
-- map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })
-- map("n", "<leader>bl", "<cmd>BufferLineCloseLeft<CR>", { desc = "Close left buffers" })
-- map("n", "<leader>br", "<cmd>BufferLineCloseRight<CR>", { desc = "Close right buffers" })
-- map("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", { desc = "Close other buffers" })
-- map("n", "<leader>bp", "<cmd>BufferLinePick<CR>", { desc = "Pick buffer" })
