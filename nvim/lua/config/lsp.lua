local capabilities =
    require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("clangd", {
    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
    },

    capabilities = capabilities,
})

vim.lsp.enable("clangd")
