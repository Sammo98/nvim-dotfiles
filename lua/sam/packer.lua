-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

 -- Dashboard -------------------------------------------------------------- 
 use {
     'glepnir/dashboard-nvim',
     event = 'VimEnter',
     config = function()
         require('dashboard').setup {
             theme = "hyper",
             config = {
                 week_header = {
                     enable = true,
                 },
                 shortcut = {
                     {
                         icon = ' ',
                         icon_hl = '@variable',
                         desc = 'Files',
                         group = 'Label',
                         action = 'Telescope find_files',
                         key = 'spc ff',
                     },

                 },
                 packages = {enable = false}, 
                 footer = {}
             }
         }
     end
 }
 ---------------------------------------------------------------------------

 -- which-key -------------------------------------------------------------
 use {
     "folke/which-key.nvim",
     config = function()
         vim.o.timeout = true
         vim.o.timeoutlen = 300
         require("which-key").setup {
         }
     end
 }
 ---------------------------------------------------------------------------
 
 --zen----------------------------------------------------------------------
 use {
     "folke/zen-mode.nvim",
     config = function()
         require("zen-mode").setup {
             width = 0.85,
         }
     end
 }

 ---------------------------------------------------------------------------

 -- comment ----------------------------------------------------------------
 use {
     'numToStr/Comment.nvim',
     config = function()
         require('Comment').setup()
     end
 }
 ---------------------------------------------------------------------------
  -- Plenary - required by many for async work
  use('nvim-lua/plenary.nvim')

  -- Telescope
  use{'nvim-telescope/telescope.nvim', tag = '0.1.1'}

  -- Theme
  use('navarasu/onedark.nvim')

  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
  }

  -- Undotree
  use('mbbill/undotree')

  -- LSP CONFIG
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             
		  {'williamboman/mason.nvim'},           
		  {'williamboman/mason-lspconfig.nvim'}, 

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         
		  {'hrsh7th/cmp-nvim-lsp'},     
		  {'hrsh7th/cmp-buffer'},       
		  {'hrsh7th/cmp-path'},         
		  {'saadparwaiz1/cmp_luasnip'}, 
		  {'hrsh7th/cmp-nvim-lua'},     

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             
		  {'rafamadriz/friendly-snippets'}, 
	  }
  }

  -- Tabs and Terminal
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
  use "numToStr/FTerm.nvim"
  -- Surround
  use({
      "kylechui/nvim-surround",
      tag = "*", 
      config = function()
          require("nvim-surround").setup({
          })
      end
  })

  -- Error Diagnostics
  use {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
          require("trouble").setup {
          }
      end
  }
  use('sindrets/diffview.nvim')
  use 'tamton-aquib/staline.nvim'
  use 'm4xshen/autoclose.nvim'
  use 'karb94/neoscroll.nvim'
  use 'ThePrimeagen/harpoon'

 end)

