return {
    -- 1. Oil.nvim (File System Editor)
    -- Allows you to edit your filesystem like a normal buffer
    {
        "stevearc/oil.nvim",
        opts = {
            -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
            default_file_explorer = true,
            -- Set to true if you want to see hidden files by default
            view_options = {
                show_hidden = true,
            },
            -- Optional: use floating window for oil
            float = {
                padding = 2,
                max_width = 90,
                max_height = 0,
            },
        },
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
        -- Keymaps: Map "-" to open Oil (standard convention)
        keys = {
            { "-", "<CMD>Oil<CR>", desc = "Open Parent Directory" },
        },
    },

    -- 2. Neo-tree (The "New Tree")
    -- LazyVim installs this by default, but putting it here allows you to
    -- configure it or ensure it's set up exactly how you want.
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            filesystem = {
                -- Make the tree filter output 'hidden' files by default?
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                },
                -- when opening a file, do we follow it in the tree?
                follow_current_file = {
                    enabled = true,
                },
            },
            window = {
                position = "left", -- left, right, top, bottom, float, current
                width = 30,
            },
        },
        -- These are the default LazyVim keys, re-stated here for clarity
        keys = {
            { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
            { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
        },
    },
}
