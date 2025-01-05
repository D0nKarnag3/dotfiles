--return {
  --"catppuccin/nvim",
  --lazy = true,
  --name = "catppuccin",
  --opts = {
    --transparent_background = true,
    --no_italic = true,
    --no_bold = false,
    --integrations = {
      --harpoon = true,
      --fidget = true,
      --cmp = true,
      --flash = true,
      --gitsigns = true,
      --illuminate = true,
      --indent_blankline = { enabled = true },
      --lsp_trouble = true,
      --mason = true,
      --mini = true,
      --native_lsp = {
        --enabled = true,
        --underlines = {
          --errors = { "undercurl" },
          --hints = { "undercurl" },
          --warnings = { "undercurl" },
          --information = { "undercurl" },
        --},
      --},
      --navic = { enabled = true, custom_bg = "lualine" },
      --neotest = true,
      --noice = true,
      --notify = true,
      --neotree = true,
      --semantic_tokens = true,
      --telescope = true,
      --treesitter = true,
      --which_key = true,
    --},
    --highlight_overrides = {
      --all = function(colors)
        --return {
          --DiagnosticVirtualTextError = { bg = colors.none },
          --DiagnosticVirtualTextWarn = { bg = colors.none },
          --DiagnosticVirtualTextHint = { bg = colors.none },
          --DiagnosticVirtualTextInfo = { bg = colors.none },
        --}
      --end,
    --},
    --color_overrides = {
      --mocha = {
        ---- I don't think these colours are pastel enough by default!
        --peach = "#fcc6a7",
        --green = "#d2fac5",
      --},
    --},
  --},
--}
return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            integrations = {
                cmp = true,
                gitsigns = true,
                harpoon = true,
                illuminate = true,
                indent_blankline = {
                    enabled = false,
                    scope_color = "sapphire",
                    colored_indent_levels = false,
                },
                mason = true,
                native_lsp = { enabled = true },
                notify = true,
                nvimtree = true,
                neotree = true,
                symbols_outline = true,
                telescope = true,
                treesitter = true,
                treesitter_context = true,
            },
            transparent_background = true,
        })

        --vim.cmd.colorscheme "catppuccin"
    end
}
