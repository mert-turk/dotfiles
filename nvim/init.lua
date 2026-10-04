local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("config.options")
require("config.keymaps")
require("config.autocmds")

require("lazy").setup("plugins")

require("config.lsp")

vim.cmd("colorscheme moonfly")

vim.cmd([[
    highlight Normal guibg=NONE
    highlight NormalNC guibg=NONE
    highlight SignColumn guibg=NONE
    highlight EndOfBuffer guibg=NONE
    highlight LineNr guibg=NONE
    highlight CursorLineNr guibg=NONE
    highlight StatusLine guibg=NONE
    highlight StatusLineNC guibg=NONE
]])
