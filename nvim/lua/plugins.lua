return {

    -- add plugins here
    --
    -- Alpha
    {
        'goolord/alpha-nvim',
        lazy = true,
    },

    -- Luarocks
    {
        'vhyrro/luarocks.nvim',
        priority = 1001,
        opts = {
            rocks = { 'magick' },
        },
    },

    -- Images
    {
        '3rd/image.nvim',
        dependencies = { 'luarocks.nvim' },
    },
    -- Data Viewer
    {
        'vidocqh/data-viewer.nvim',
        opts = {},
        dependencies = {
            'nvim-lua/plenary.nvim',
            'kkharji/sqlite.lua',
        },
    },

    -- Notify
    {
        'rcarriga/nvim-notify',
    },

    -- devicons
    {
        'nvim-tree/nvim-web-devicons',
    },

    -- Which-key Extension
    {
        "folke/which-key.nvim",
        lazy = true,
    },

    -- Persistence
    {
        'folke/persistence.nvim',
        event = "BufReadPre",
        opts = {},
    },

    -- Copilot
    {
        'github/copilot.vim',
    },

    -- Auto Pairs
    {
        'windwp/nvim-autopairs'
    },

    -- Bufferline
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
    },

    -- Conda
    {
        'kmontocam/nvim-conda',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },

    -- Indentation highlighting
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = {},
    },

    -- Rainbow highlighting
    {
        'HiPhish/nvim-ts-rainbow2',
    },

    -- Hop
    {
        'phaazon/hop.nvim',
        lazy = true,
    },
    -- Nvim-surround
    {
        'kylechui/nvim-surround',
        config = function()
            require('nvim-surround').setup({
                -- Config here, empty for defaults
            })
        end
    },

    -- Git Integration
    {
        'lewis6991/gitsigns.nvim',
    },

    -- Undo-Tree
    {
        'jiaoshijie/undotree',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
    },

    -- Nvimtree
    {
        'nvim-tree/nvim-tree.lua',
        lazy = true,
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
    },
    -- Copilot
    {
        'github/copilot.vim',
    },
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
    },

    -- Toggle Term
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true
    },

    -- Language Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- LSP support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    },

    -- Colorscheme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

}
