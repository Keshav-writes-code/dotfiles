return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
      picker = {
        sources = {
          files = { hidden = true },
          grep = { hidden = true },
          explorer = {
            hidden = true,
            layout = {
              layout = {
                position = "right",
              },
            },
          },
        },
      },
    },
  },
}
