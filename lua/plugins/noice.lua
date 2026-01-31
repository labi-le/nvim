return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      view = "cmdline",
    },
    routes = {
      {
        filter = {
          event = "notify",
        },
        opts = { skip = true },
      },
    },
  },
}
