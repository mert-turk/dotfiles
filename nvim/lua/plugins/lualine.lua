return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        event = "VeryLazy",
        opts = {
            options = {
                theme = "moonfly",
                globalstatus = true,
                section_separators = "",
                component_separators = "|",
            },

            sections = {
                lualine_a = { "mode" },
                lualine_b = {
		   {"branch", icon = ""},
                    "diff",
                    "diagnostics",
                },
                lualine_c = { "filename" },
                lualine_x = {
                    "filetype",
                    "encoding",
                },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
        },
    },
}
