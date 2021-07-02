local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = 'TSUpdate'
  }

  -- Completion
  use {
    'hrsh7th/nvim-compe'
  }

  -- Themes
  use {
	  'gruvbox-community/gruvbox',
	  config = function()
		  require 'plugins.gruvbox'.init()
	  end
  }
end)
