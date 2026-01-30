-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

unmap("n", "<a-j>")
unmap("n", "<a-k>")
unmap("i", "<a-j>")
unmap("i", "<a-k>")
unmap("v", "<a-j>")
unmap("v", "<a-k>")
unmap("n", "<leader>/")

-- Copy and paste into clipboard buffer
map("n", "<leader>y", '"+y')
map("x", "<leader>y", '"+y')
map("n", "<leader>p", '"+p')
map("x", "<leader>p", '"+p')

-- Move highlighted lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("x", "p", '"_dP')

map("i", "<C-h>", "<Left>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-l>", "<Right>")

map("v", "<leader>/", "gcc<esc>", { remap = true, desc = "Comment line" })
map("n", "<leader>/", "gcc<esc>", { remap = true, desc = "Comment line" })
map("n", "<leader>fw", function()
  Snacks.picker.grep_word()
end, { desc = "Grep" })

-- Terminals
map({ "n", "t" }, "<a-j>", function()
  Snacks.terminal.toggle(nil, { count = 1, cwd = LazyVim.root(), win = { position = "bottom" } })
end, { desc = "Terminal (Root Dir)" })

vim.keymap.set({ "n", "t" }, "<A-i>", function()
  Snacks.terminal.toggle(nil, {
    count = 2,
    win = {
      position = "float",
      border = "rounded",
      width = 0.8,
      height = 0.8,
    },
  })
end, { desc = "Toggle Floating Terminal" })
