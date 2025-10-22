return {
  -- Disable LSP autoformatting
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--style='{BasedOnStyle: llvm, IndentWidth: 4}'", -- This is not supported yet
          },
        },
        -- Set desired line length for python
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                flake8 = {
                  maxLineLength = 120,
                },
                pycodestyle = {
                  maxLineLength = 120,
                },
              },
            },
          },
        },
        svlangserver = {
          cmd = { "svlangserver" },
          settings = {
            systemverilog = {
              formatCommand = "verible-verilog-format --column_limit 100 --indentation_spaces 4 --wrap_spaces 4 --port_declarations_alignment align",
            },
          },
        },
      },
    },
  },
}
