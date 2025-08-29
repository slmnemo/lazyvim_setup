-- File containing Catppuccin themes and bypass for bufferline bug due to catppuccin
return {
  { -- fix bug caused by catppuccin bufferline integration error
    "akinsho/bufferline.nvim",
    init = function()
      local bufline = require("catppuccin.groups.integrations.bufferline")
      function bufline.get()
        return bufline.get_theme()
      end
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      flavour = "macchiato",
    },
  },
}
