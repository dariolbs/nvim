local function bootstrap_pckr()
    local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

    if not vim.loop.fs_stat(pckr_path) then
        vim.fn.system({
            'git',
            'clone',
            "--filter=blob:none",
            'https://github.com/lewis6991/pckr.nvim',
            pckr_path
        })
    end

    vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{

    -- Plugin manager
    'wbthomason/packer.nvim',

    -- Colorschemes
    'ellisonleao/gruvbox.nvim',
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

    -- Debugging
    'mfussenegger/nvim-dap',
    { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} },

    -- Treesitter
    'nvim-treesitter/nvim-treesitter',

    -- Css color
    'ap/vim-css-color',

    -- Toggleterm
    "akinsho/toggleterm.nvim",

    -- Telescope
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    };

    'nvim-lua/plenary.nvim',

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

}
