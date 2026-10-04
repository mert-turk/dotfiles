vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- Save
map("n", "<leader>w", "<cmd>write<cr>", { desc = "Save file" })

-- Quit
map("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- Better window navigation
map("n", "<C-Left>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-Down>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-Up>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-Right>", "<C-w>l", { desc = "Move to right window" })

map("n", "<leader>t", "<cmd>terminal<cr>", {
    desc = "Open terminal",
})

-- Terminal mode: return to normal mode
map("t", "<Esc>", "<C-\\><C-n>", {
    desc = "Exit terminal mode",
})

map("n", "<leader>tt", function()
    vim.cmd("botright 10split")
    vim.cmd("terminal")
    vim.cmd("startinsert")
end, {
    desc = "Open terminal",
})
