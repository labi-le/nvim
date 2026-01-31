return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    vim.keymap.set("n", "fg", function()
      require("telescope.builtin").live_grep()
    end, { desc = "Live Grep" })
  end,
}
