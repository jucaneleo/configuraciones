vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',

  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "bluz71/vim-moonfly-colors", as = "moonfly" }
  use 'Mofiqul/dracula.nvim'
  use 'sainnhe/everforest'
  use 'folke/tokyonight.nvim'
  use 'KabbAmine/vCoolor.vim'


  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'
  use 'cohama/lexima.vim'
  use 'echasnovski/mini.comment'
  use 'ggandor/leap.nvim'


  use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
	use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}



end)
