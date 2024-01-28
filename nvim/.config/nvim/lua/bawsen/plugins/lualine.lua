return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local lualine = require("lualine")
    require'lualine'.setup {
      options = {
        theme = 'gruvbox'
      }
    }
  end
}
