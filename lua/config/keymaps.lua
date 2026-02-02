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

-- Terminals
map({ "n", "t" }, "<A-j>", function()
  Snacks.terminal.toggle(nil, {
    count = 1,
    win = {
      wo = {
        winbar = "",
      },
    },
  })
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

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

map("n", "<a-p>", function()
  Snacks.picker.files()
end, { desc = "Find files" })
