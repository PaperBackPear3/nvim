local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {{
    'folke/which-key.nvim',
    lazy = false
}, 'nvim-tree/nvim-tree.lua', {
    'nvim-tree/nvim-web-devicons',
    lazy = true
}, 'nvim-lualine/lualine.nvim', {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {{
        "nvim-treesitter/nvim-treesitter-textobjects",
        init = function()
            -- disable rtp plugin, as we only need its queries for mini.ai
            -- In case other textobject modules are enabled, we will load them
            -- once nvim-treesitter is loaded
            require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
            load_textobjects = true
        end
    }}
}, -- completion
-- 'hrsh7th/nvim-cmp',
-- 'hrsh7th/cmp-nvim-lsp',
-- 'L3MON4D3/LuaSnip',
-- 'saadparwaiz1/cmp_luasnip',
-- "rafamadriz/friendly-snippets",
-- "github/copilot.vim",
"williamboman/mason.nvim", "neovim/nvim-lspconfig", -- "williamboman/mason-lspconfig.nvim",
--  "glepnir/lspsaga.nvim",
{
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {{'nvim-lua/plenary.nvim'}, {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
            require("telescope").load_extension("fzf")
        end
    }}
}}

local opts = {}

require("lazy").setup(plugins, opts)
