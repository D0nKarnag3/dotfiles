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
  --use 'neovim/nvim-lspconfig'
  use {
    'd0nkarnag3/lspcontainers.nvim',
    requires = {
      'neovim/nvim-lspconfig',
      'nvim-lua/lsp_extensions.nvim'
    },
    config = function ()
      require'plugins/lspconfig'.init()
    end
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    config = function ()
      require'plugins.telescope'.init()
    end
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = 'TSUpdate'
  }

  -- Completion
  use {
    'hrsh7th/nvim-compe',
    requires = {
      'onsails/lspkind-nvim'
    },
    config = function ()
      require'plugins.compe'.init()
      require'plugins.lspkind'.init()
    end
  }

  -- Git support
  use 'rhysd/git-messenger.vim'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require'plugins.gitsigns'.init()
    end
  }

  -- Utilities
  use {
    'hoob3rt/lualine.nvim',
    config = function()
      require'plugins.lualine'.init()
    end
  }

  -- Themes
  use {
    'gruvbox-community/gruvbox',
    config = function()
      require 'plugins.gruvbox'.init()
    end
  }
end)
