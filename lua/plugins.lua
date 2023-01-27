return require('packer').startup(function()
    -- packer can manage itself
    use "wbthomason/packer.nvim"

    -- colorscheme
    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require("catppuccin").setup {
                flavour = "mocha", -- mocha, macchiato, frappe, latte
                transparent_background = true,
                integrations = {
                    gitsigns = true,
                    nvimtree = true,
                    telescope = true,
                    notify = true,
                    markdown = true,
                },
            }
            vim.api.nvim_command "colorscheme catppuccin"
        end,
    }

    use 'folke/tokyonight.nvim'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function ()
            require("config_plugins.telescope")
        end,
    }

    -- telescope fzf algorithm and syntax
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }

    -- nvim tree
    use {
        "nvim-tree/nvim-tree.lua",
        requires = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("config_plugins.nvimtree")
        end,
    }

    -- indentation guides
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("config_plugins.indentline")
        end,
    }

    -- comment
    use {
        "numToStr/Comment.nvim",
        config = function()
            require("config_plugins.comment")
        end,
    }

    -- color preview
    use {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("config_plugins.colorizer")
        end,
    }

    -- terminal
    use {
        "akinsho/toggleterm.nvim",
        tag = '*',
        config = function()
            require("config_plugins.toggleterm")
        end,
    }

    -- git
    use {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("config_plugins.gitsigns")
        end,
    }

    -- notify
    use {
        "rcarriga/nvim-notify",
    }

    -- dashboard
    use {
        "goolord/alpha-nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("config_plugins.alpha")
        end,
    }

    -- hydra
    use {
        "anuvyklack/hydra.nvim",
        config = function()
            require("config_plugins.hydra.hydra_bufferline")
        end,
    }

    -- which-key
    use {
        "folke/which-key.nvim",
        config = function()
            require("config_plugins.whichkey")
        end,
    }

    -- bufferline
    use {
        "akinsho/bufferline.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
        after = "catppuccin",
        config = function()
            require("config_plugins.bufferline")
        end,
    }

    -- status line
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
        event = "BufEnter",
        config = function()
            require("config_plugins.lualine")
        end,
    }

    -- tree sitter
    use {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("config_plugins.treesitter")
        end,
        run = ":TSUpdate",
    }

    use {
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            {"neovim/nvim-lspconfig"},
            {"williamboman/mason.nvim"},
            {"williamboman/mason-lspconfig.nvim"},

            -- Autocompletion
            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"saadparwaiz1/cmp_luasnip"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-nvim-lua"},

            -- Snippets
            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"},
        },
        config = function()
            require("config_plugins.lsp_zero")
        end,
    }

end)
