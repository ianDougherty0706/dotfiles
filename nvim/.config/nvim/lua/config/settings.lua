vim.opt.tabstop = 2                   --tab width of 2
vim.opt.softtabstop = 2               --tab width of 2
vim.opt.shiftwidth = 2                --tab width of 2
vim.opt.expandtab = true              --make tabs spaces
vim.opt.smartindent = true            --indent properly
vim.opt.breakindent = true            --wrapped lines will preserve the indent of its parent line
vim.autoindent = true                 --keep indent from previous line
vim.opt.smarttab = true               --rather than deleteing spaces, delete whole tabs

vim.wo.wrap = true                    --word wrap
vim.opt.showmode = false              --hide mode since it is in lualine
vim.opt.cmdheight = 0                 --hide default status bar when not typing a command
vim.opt.mouse = 'a'
vim.opt.undofile = true               --store undo history
vim.opt.termguicolors = true

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'   --use system clipboard after neovim starts up
end)

vim.opt.number = true                 --line numbers
vim.opt.relativenumber = true         --relative line numbers
vim.opt.scrolloff = 10                --keep n number of lines on the screen when scrolling

vim.g.have_nerd_font = true

vim.opt.ignorecase = true             --search any case
vim.opt.smartcase = true              --when using a caps, search using specific case
vim.opt.signcolumn = "yes"            --always show sign column for lsp warnings / errors

vim.opt.splitright = true             --split right by default
vim.opt.splitbelow = true             --split below by default

-- highlight when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
