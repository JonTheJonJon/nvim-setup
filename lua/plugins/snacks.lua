-- lua/plugins/snacks.lua
return {
    "folke/snacks.nvim",
    opts = {
        picker = {
            sources = {
                notifications = {
                    win = {
                        input = {
                            keys = {
                                -- Fix: Allow wrapping in the preview window
                                ["<c-w>"] = { "toggle_wrap", mode = { "i", "n" } },
                            },
                        },
                        -- Force wrap by default in the preview pane
                        preview = { wo = { wrap = true } },
                    },
                },
            },
        },
    },
}
