--return {
  --"nvim-treesitter/nvim-treesitter",
  --event = { "BufReadPre", "BufNewFile" },
  --build = ":TSUpdate",
  --dependencies = {
      --"windwp/nvim-ts-autotag",
  --},
  --opts = {
    --hightlight = { enable = true },
    --indent = { enable = true },
    --sync_install = false,
    --auto_install = true,
    --ensure_installed = {
      --"help",
      --"bash",
      --"diff",
      --"html",
      --"javascript",
      --"typescript",
      --"css",
      --"gitignore",
      --"http",
      --"json",
      --"scss",
      --"sql",
      --"vim",
      --"vimdoc",
      --"markdown",
      --"markdown_inline",
      --"yaml",
      --"lua",
      --"c_sharp",
    --},
    --query_linter = {
      --enable = true,
      --use_virtual_text = true,
      --lint_events = { "BufWrite", "CursorHold" },
    --},
  --},
--}
return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
      "windwp/nvim-ts-autotag",
  },
  config = function()
      -- import nvim-treesitter pluging
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax hightligting
        highligt = {
            enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = {
            enable = true,
        },
        ensure_installed = {
          "bash",
          "diff",
          "html",
          "javascript",
          "typescript",
          "css",
          "gitignore",
          "http",
          "json",
          "scss",
          "sql",
          "vim",
          "vimdoc",
          "markdown",
          "markdown_inline",
          "yaml",
          "lua",
          "c_sharp",
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<C-space>",
                node_incremental = "<C-space>",
                scope_incremental = false,
                node_decremental = "<BS>",
            }
        },
      })
  end,
  }
