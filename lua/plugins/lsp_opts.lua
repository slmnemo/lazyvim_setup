return {
  -- Disable LSP autoformatting
  {
    "neovim/nvim-lspconfig",
    opts = {
      --- Do not autoformat on save
      autoformat = false,
      -- Set desired line width for python codestyle
      require("lspconfig").pylsp.setup{
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = {
                maxLineLength = 120
              }
            }
          }
        }
      }
    },
  },
}
