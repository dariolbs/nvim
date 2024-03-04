local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({

    -- Colorschemes
    'sainnhe/gruvbox-material',
    'ellisonleao/gruvbox.nvim',
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
    'altercation/vim-colors-solarized',

    -- Icons
    'nvim-tree/nvim-web-devicons',

    -- Debugging
    'mfussenegger/nvim-dap',
    { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} },

    -- Treesitter
    'nvim-treesitter/nvim-treesitter',

    -- Css color
    'ap/vim-css-color',

    -- IndentLine
    "lukas-reineke/indent-blankline.nvim",

    -- Toggleterm
    "akinsho/toggleterm.nvim",

    -- Lualine
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },

    -- Telescope
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    };
    'nvim-lua/plenary.nvim',

    -- Neovim orgmode
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        lazy = false, -- specify lazy = false because some lazy.nvim distributions set lazy = true by default
        -- tag = "*",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            -- notes = "~/.notes",
                        },
                    },
                },
            },
        }
    end,
},
    -- Git integration
    'tpope/vim-fugitive',

    -- LSP Support
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-jdtls',

    -- Autocompletion Engine
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lua',

    --  Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
    'windwp/nvim-autopairs',
})
