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
    incsearch = true,
    shiftwidth = 2
  }

  -- Generic vim.o
  for k, v in pairs(settings) do
      vim.o[k] = v
  end

  -- Not yet in vim.o
  vim.cmd('set encoding=utf8')
  vim.cmd('set undodir=~/.vim/undodir')
  vim.cmd('set tabstop=4')
  vim.cmd('set number')
  vim.cmd('set nohlsearch')
end

local function set_vim_wo()
  vim.wo.number = true
  vim.wo.relativenumber = true
end

local function set_keymaps()
  local map = vim.api.nvim_set_keymap

  local options = { noremap = true }

  --map('n', 'Y', 'y$', options)

  -- Keeping it centered
  map('n', 'n', 'nzzzv', options);
  map('n', 'N', 'Nzzzv', options);
  map('n', 'J', 'mzJ`z', options);

  -- Undo break points
  map('i', ',', ',<c-g>u', options)
  map('i', '.', '.<c-g>u', options)
  map('i', '!', '!<c-g>u', options)
  map('i', '?', '?<c-g>u', options)
end

local function init()
  set_vim_g()
  set_vim_o()
  set_vim_wo()
  set_keymaps()
end

return {
  init = init
}
