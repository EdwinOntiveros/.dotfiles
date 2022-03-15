local cmd = vim.cmd
local exec = vim.api.nvim_exec


cmd [[packadd packer.nvim]]

exec([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost lua/plugins/init.lua source <afile> | PackerCompile
  augroup end
]], false)

return require'packer'.startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- performance improvers
    use("nathom/filetype.nvim")
    use 'lewis6991/impatient.nvim'

    -- tpope plugins
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'tpope/vim-speeddating'
    use 'tpope/vim-unimpaired'
    use 'tpope/vim-commentary'

    -- syntax, lsp and autocompletion
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'neovim/nvim-lspconfig' }

end)

