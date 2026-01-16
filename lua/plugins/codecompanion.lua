return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require("codecompanion").setup({
            display = {
                diff = {
                    provider = "mini_diff", -- or "default"
                },
            },
            adapters = {
                anthropic = function()
                    return require("codecompanion.adapters").extend("anthropic", {
                        env = {
                            api_key = "ANTHROPIC_API_KEY",
                        },
                        schema = {
                            model = {
                                default = "claude-sonnet-4-20250514",
                            },
                        },
                    })
                end,
            },
            strategies = {
                chat = {
                    adapter = "anthropic",
                },
                inline = {
                    adapter = "anthropic",
                },
                agent = {
                    adapter = "anthropic",
                },
            },
        })

        -- Keymaps
        vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>CodeCompanionChat<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("v", "<leader>cc", "<cmd>CodeCompanionChat<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("v", "<leader>ce", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
    end,
}
