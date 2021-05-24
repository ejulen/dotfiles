local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
	execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

return require('packer').startup(function()
	use { 'wbthomason/packer.nvim', opt = true }
	use 'neovim/nvim-lspconfig'
  use {
    'hrsh7th/nvim-compe',
    config = function()
      require'compe'.setup{
        enabled = true,
        autocomplete = true,
        preselect = 'enable',
        documentation = true,

        source = {
          path = true,
          buffer = true,
          calc = true,
          nvim_lsp = true,
        }
      }
    end
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' },
  }
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
    config = function()
      local gl = require 'galaxyline'
      local gls = gl.section
      local colors = require('galaxyline.theme').default
      gls.left[1] = {
        FileName = {
          provider = 'FileName',
          highlight = {colors.magenta, colors.darkblue}
        }
      }
      gls.left[2] = {
        Signature = {
          provider = function()
            return 'foo'
          end,
          highlight = { colors.cyan, colors.bg }
        }
      }
    end,
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
end)
