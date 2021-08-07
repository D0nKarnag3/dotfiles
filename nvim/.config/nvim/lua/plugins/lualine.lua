local function init()
  require'lualine'.setup {
    options = {
      theme = 'gruvbox'
    }
  }
end

return {
  init = init
}
