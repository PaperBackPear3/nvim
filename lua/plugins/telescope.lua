return {{
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    enabled = true,
    dependencies = {'nvim-lua/plenary.nvim'},
    keys = { -- add a keymap to browse plugin files
    -- stylua: ignore
    --     local builtin = require('telescope.builtin')
    -- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    -- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    -- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    -- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    -- {
    --     "<leader>fp",
    --     function()
    --         require("telescope.builtin").find_files({
    --             cwd = require("lazy.core.config").options.root
    --         })
    --     end,
    --     desc = "Find Plugin File"
    -- }, {
    --     "<leader>ff",
    --     function()
    --         require("telescope.builtin").find_files()
    --     end,
    --     desc = "Find File"
    -- }, {
    --     "<leader>fg",
    --     function()
    --         require("telescope.builtin").live_grep()
    --     end,
    --     desc = "Live Grep"
    -- }, {
    --     "<leader>fb",
    --     function()
    --         require("telescope.builtin").buffers()
    --     end,
    --     desc = "Find Plugin File"
    -- }
    },
    -- change some options
    opts = {
        defaults = {
            layout_strategy = "horizontal",
            layout_config = {
                prompt_position = "bottom"
            },
            sorting_strategy = "ascending",
            winblend = 0
        }
    }
}, -- add telescope-fzf-native
{
    "telescope.nvim",
    dependencies = {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
            require("telescope").load_extension("fzf")
        end
    }
}}
