-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'L3MON4D3/LuaSnip' },         -- Required
            { 'saadparwaiz1/cmp_luasnip' }, -- Required

        }
    }

    -- setup of init.lua
    use { 'folke/neodev.nvim' }

    -- nvim-lsp progress.
    use { 'j-hui/fidget.nvim' }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'numToStr/Comment.nvim'
    use 'windwp/nvim-autopairs'
    use 'xiyaowong/transparent.nvim'

    -- file explorer - nvim tree
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'
    use 'akinsho/toggleterm.nvim'
    use "rafamadriz/friendly-snippets"

    -- color scheme
    use "rebelot/kanagawa.nvim"

    -- auto docs
    use {
        'kkoomen/vim-doge',
        run = ':call doge#install()'
    }
    -- easy motion
    use 'easymotion/vim-easymotion'
end)
