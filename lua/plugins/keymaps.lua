return {
  "LazyVim/LazyVim",
  keys = {
    { "<C-w>", "<cmd>bd<cr>", desc = "Delete Buffer" },

    {
      "f",
      function()
        local last = vim.g.last_f_time or 0
        local now = vim.loop.now()

        if (now - last) < 300 then
          require("telescope.builtin").find_files()
          vim.g.last_f_time = 0
        else
          vim.g.last_f_time = now
          vim.defer_fn(function()
            vim.g.last_f_time = 0
          end, 300)
        end
      end,
      desc = "Double f: Find Files",
    },
  },
}
