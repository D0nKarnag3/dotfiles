local function set_vim_g()
  vim.g.mapleader = " "
end

local function set_vim_o()
  local settings = {
    backup = false,
    errorbells = false,
    expandtab = true,
    hidden = true,
    softtabstop = 4,
    termguicolors = true,
    incsearch = true
  }

  -- Generic vim.o
  for k, v in pairs(settings) do
      vim.o[k] = v
  end

  -- vim.wo
  vim.wo.relativenumber = true

  -- Not yet in vim.o
  vim.cmd('set encoding=utf8')
  vim.cmd('set undodir=~/.vim/undodir')
  vim.cmd('set tabstop=4')
  vim.cmd('set number')
  vim.cmd('set nohlsearch')
  vim.cmd('set shiftwidth=2')
end

local function init()
  set_vim_g()
  set_vim_o()
end

return {
  init = init
}
