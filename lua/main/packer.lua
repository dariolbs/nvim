return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- STYLE!
    use 'navarasu/onedark.nvim'
    use 'rose-pine/neovim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'rebelot/kanagawa.nvim'
    use 'vim-scripts/reloaded.vim'
    use 'sainnhe/everforest'
    use 'sainnhe/gruvbox-material'
    use { "ellisonleao/gruvbox.nvim" }
    use 'folke/tokyonight.nvim'
    use 'xiyaowong/nvim-transparent'
    -- BETTER UI EXPERIENCE
    -- Nvim tree
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
    }
    use 'ap/vim-css-color'
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use 'ryanoasis/vim-devicons'
    use "lukas-reineke/indent-blankline.nvim"
    use 'mfussenegger/nvim-dap'
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
        end
    }
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-lua/plenary.nvim'
    -- Telescope! 󰭎
    use {
      'nvim-telescope/telescope.nvim', branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Lualine
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- Git
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    -- LSP Support
    use 'williamboman/mason.nvim'           -- Optional
    use 'williamboman/mason-lspconfig.nvim' -- Optional
    use 'neovim/nvim-lspconfig'             -- Required
    use 'mfussenegger/nvim-jdtls'           -- Extra jdtls

    -- Autocompletion Engine
    use 'hrsh7th/nvim-cmp'         -- Required
    use 'hrsh7th/cmp-nvim-lsp'     -- Required
    use 'hrsh7th/cmp-buffer'       -- Optional
    use 'hrsh7th/cmp-path'         -- Optional
    use 'saadparwaiz1/cmp_luasnip' -- Optional
    use 'hrsh7th/cmp-nvim-lua'     -- Optional

    --  Snippets
    use 'L3MON4D3/LuaSnip'             -- Required
    use 'rafamadriz/friendly-snippets' -- Optional

    use 'windwp/nvim-autopairs'
    -- Dashboard
    use {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
	require('dashboard').setup {
	      theme = 'doom',
	  config = {
	  header = {
	      [[]],
	      [[]],
	      [[]],
	      [[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
	      [[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
	      [[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
	      [[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
	      [[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
	      [[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
	      [[]],
	      [[]],
	      [[]],
	  },
	  center = {
	    {
	      icon = '󰭎 ',
	      desc = 'Search Project',
	      key = 'f',
	      action = 'Telescope find_files'
	    },
	    {
	      icon = ' ',
	      desc = 'Search Notes',
	      key = 'n',
	      action = 'cd ~/Documents/Notas | Telescope find_files'
	    },
	    {
	      icon = ' ',
	      desc = 'Search Config',
	      key = 'v',
	      action = 'cd ~/.config/nvim/lua | Telescope find_files'
	    },
	    {
	      icon = '⚙ ',
	      desc = 'Search Dotfiles',
	      key = 'd',
	      action = 'cd ~/.config | Telescope find_files'
	    },
	    {
	      icon = '🎓 ',
	      desc = 'Search University Folder',
	      key = 'u',
	      action = 'cd ~/Universidade | Telescope find_files'
	    },
	    {
	      icon = ' ',
	      desc = 'Sync Packer',
	      key = 's',
	      action = 'PackerSync'
	    },
	  },
	  footer = {}  --your footer
	}
	  }
  end,
  requires = {'nvim-tree/nvim-web-devicons'},
}
end)
