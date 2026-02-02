return {
  "folke/snacks.nvim",
  opts = {
    scroll = { enabled = false },
  },
  keys = {
    { "<leader>/", false },
    {
      "<leader>fw",
      function()
        Snacks.picker.grep()
      end,
      { desc = "Grep" },
    },
  },
}
