vim.g.mapleader = ','

vim.api.nvim_set_keymap('n', '<c-P>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<c-B>',
    "<cmd>lua require('fzf-lua').buffers()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<c-G>',
    "<cmd>lua require('fzf-lua').git_files()<CR>",
    { noremap = true, silent = true })

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'github/copilot.vim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use { 'junegunn/fzf', run = './install --bin', }
  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' } }
end)
