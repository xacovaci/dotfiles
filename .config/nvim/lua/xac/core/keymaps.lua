local vim = vim or {}

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Explorer
keymap("n", "<leader>e", ":Lex<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Delete line without yanking
keymap("n", "<leader>d", '"_dd', opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<leader>p", '"_dP', opts)
keymap("v", "<leader>d", '"_d', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Custom --
keymap("n", "<esc><esc>", "<cmd>nohlsearch<cr>", opts)

-- defining customized commands for neovim
vim.cmd("command! Fmt lua vim.lsp.buf.format()")

-- set spelling for english
vim.bo.spelllang = "en"

-- Define the function to toggle spell checking
function ToggleSpellCheck()
	if vim.wo.spell then
		vim.wo.spell = false
		print("Spell checking disabled")
	else
		vim.wo.spell = true
		print("Spell checking enabled")
	end
end

-- Create a command named "ToggleSpellCheck" and map it to the function
vim.cmd("command! ToggleSpellCheck lua ToggleSpellCheck()")
