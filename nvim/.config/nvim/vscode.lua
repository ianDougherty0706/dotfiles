-- ! Options
local g = vim.g
local opt = vim.opt

opt.tabstop = 2                   --tab width of 2
opt.softtabstop = 2               --tab width of 2
opt.shiftwidth = 2                --tab width of 2
opt.expandtab = true              --make tabs spaces
opt.smartindent = true            --indent properly
opt.breakindent = true            --wrapped lines will preserve the indent of its parent line
opt.autoindent = true                 --keep indent from previous line
opt.smarttab = true               --rather than deleteing spaces, delete whole tabs
opt.mouse = 'a'
opt.undofile = true               --store undo history
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.scrolloff = 10                --keep n number of lines on the screen when scrolling
opt.ignorecase = true             --search any case
opt.smartcase = true              --when using a caps, search using specific case
opt.signcolumn = "yes"            --always show sign column for lsp warnings / errors
opt.splitright = true             --split right by default
opt.splitbelow = true             --split below by default
vim.wo.wrap = true                    --word wrap

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'   --use system clipboard after neovim starts up
end)


vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- ! Keymaps
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
-- map leader
keymap("n", "<space>", "", opts)
g.mapleader = " "
g.localleader = " "

keymap("n", "<leader>w", "<cmd>w!<CR>", opts)
keymap("n", "<leader>q", "<cmd>q!<CR>", opts)
keymap("n", "<leader>x", "<cmd>x!<CR>", opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "J", ":m .+1<CR>==v", opts)
keymap("v", "K", ":m .-2<CR>==v", opts)

keymap("n", "<Esc>", "<cmd>noh<CR>", opts)
keymap("n", "S-h", "<cmd>tabp<CR>", opts)
keymap("n", "S-l", "<cmd>tabn<CR>", opts)
keymap("n", "<C-b>", "<C-b>zz", opts)
keymap("n", "<C-f>", "<C-f>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<leader>/", "<cmd>lua require('vscode').action('fuzzySearch.activeTextEditor')<CR>")
keymap({"n", "v"}, "<leader>cc", "<cmd>lua require('vscode').action('editor.action.commentLine')<CR>")
keymap("n", "<leader>db", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap("n", "<leader>du", "<cmd>lua require('vscode').action('workbench.action.focusActiveEditorGroup')<CR>")
keymap("n", "<leader>dc", "<cmd>lua require('vscode').action('workbench.action.debug.continue')<CR>")
keymap("n", "<leader>dw", "<cmd>lua require('vscode').action('editor.debug.action.selectionToWatch')<CR>")
keymap("n", "<leader>e", "<cmd>lua require('vscode').action('workbench.files.action.focusFilesExplorer')<CR>")
keymap("n", "<leader>ff", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")
keymap("n", "<leader>gs", "<cmd>lua require('vscode').action('workbench.action.gotoSymbol')<CR>")
keymap("n", "<leader>gd", "<cmd>lua require('vscode').action('editor.action.revealDefinition')<CR>")
keymap("n", "<leader>gr", "<cmd>lua require('vscode').action('editor.action.goToReferences')<CR>")
keymap("n", "<leader>g<S-i>", "<cmd>lua require('vscode').action('editor.action.goToImplimentation')<CR>")
keymap("n", "<leader>h", "<cmd>lua require('vscode').action('workbench.action.focusLeftGroup')<CR>")
keymap("n", "<leader>j", "<cmd>lua require('vscode').action('workbench.action.focusBelowGroup')<CR>")
keymap("n", "<leader>k", "<cmd>lua require('vscode').action('workbench.action.focusAboveGroup')<CR>")
keymap("n", "<leader>l", "<cmd>lua require('vscode').action('workbench.action.focusRightGroup')<CR>")
keymap("n", "<leader>ph", "<cmd>new<CR>", opts)
keymap("n", "<leader>pv", "<cmd>vnew<CR>", opts)
keymap("n", "<leader>sf", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
-- ! Harpoon
keymap("n", "<leader>ha", "<cmd>lua require('vscode').action('vscode-harpoon.addEditor')<CR>")
keymap("n", "<leader>ho", "<cmd>lua require('vscode').action('vscode-harpoon.editorQuickPick')<CR>")
keymap("n", "<leader>he", "<cmd>lua require('vscode').action('vscode-harpoon.editEditors')<CR>")
keymap("n", "<leader>h1", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor1')<CR>")
keymap("n", "<leader>h2", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor2')<CR>")
keymap("n", "<leader>h3", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor3')<CR>")
keymap("n", "<leader>h4", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor4')<CR>")
keymap("n", "<leader>h5", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor5')<CR>")
keymap("n", "<leader>h6", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor6')<CR>")
keymap("n", "<leader>h7", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor7')<CR>")
keymap("n", "<leader>h8", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor8')<CR>")
keymap("n", "<leader>h9", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor9')<CR>")
-- ! Code Runner
--   "before": ["leader", "r", "s"],
--   "commands": ["code-runner.stop"]
-- },
--   "before": ["leader", "r", "r"],
--   "commands": ["code-runner.run"]
-- },
--   "before": ["leader", "r", "e"],
--   "commands": ["emulator.start"]
