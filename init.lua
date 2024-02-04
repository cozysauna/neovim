-- lazy.nvimの設定
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- lua/plugins配下のluaファイルを読み込む
require("lazy").setup("plugins")
require("keymaps")
require("options")

-- NERDTreeが自動で起動するように設定
-- vim.api.nvim_exec([[
--    autocmd vimenter * NERDTree
-- ]], false)

vim.api.nvim_exec([[
    augroup NERDTreeAutocmd
        autocmd!
        autocmd VimEnter * NERDTree | wincmd p
    augroup END
]], false)
