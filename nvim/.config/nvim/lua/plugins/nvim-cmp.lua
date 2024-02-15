return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    -- autocomplete paris
    'windwp/nvim-autopairs',

    -- snippets
    'L3MON4D3/LuaSnip',

    -- auto completion sources
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp',
    --'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'onsails/lspkind-nvim',
  },
  config = function ()
    local cmp = require("cmp")
    --local types = require("cmp.types")
    local lspkind = require("lspkind")
    local luasnip = require("luasnip")

    -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 50,
          menu = ({
            buffer = "[Buffer]",
            cmd_tabnine = "[T9]",
            nvim_lsp = "[LSP]",
            nvim_lua = "[Lua]",
            treesitter = "[TS]",
            vsnip = "[VSnip]",
          }),
          with_next = true
        }),
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
          --vim.fn["vsnip#anonymous"](args.body)
        end,
      },
      mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-e>'] = cmp.mapping({
          i = cmp.mapping.abort(),
          c = cmp.mapping.close(),
        }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      },
      -- sources for autocompletion
      sources = {
        { name = 'cmp_tabnine' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip' },
        { name = 'treesitter' },
        { name = 'vsnip' },
      }
    })

    cmp.setup.cmdline('/', {
      sources = {
        { name = 'buffer' }
      }
    })

    vim.o.completeopt = 'menu,menuone,noselect'
  end
}
