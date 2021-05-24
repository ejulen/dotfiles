function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

vim.g.mapleader = ' '

map('i', '<CR>', [[compe#confirm('<CR>')]], { expr = true })

-- Telescope
map('n', '<C-p>', '<cmd>Telescope find_files<CR>', { silent = false })
map('n', '<A-p>', '<cmd>Telescope live_grep<CR>', { silent = false })
map('n', '<C-A-p>', '<cmd>Telescope grep_string<CR>', { silent = false })
map('n', '<S-A-p>', '<cmd>Telescope oldfiles<CR>', { silent = false })

-- LSP
map('n', '<leader>ld', '<cmd>Telescope lsp_document_diagnostics<CR>')
map('n', '<leader>lwd', '<cmd>Telescope lsp_workspace_diagnostics<CR>')
map('n', '<leader>ca', '<cmd>Telescope lsp_code_actions<CR>')
map('n', '<leader>rca', '<cmd>Telescope lsp_range_code_actions<CR>')
map('n', '<leader>gr', '<cmd>Telescope lsp_references<CR>')
map('n', '<leader>gd', '<cmd>Telescope lsp_definitions<CR>')

map('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
-- map('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<leader>K', '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
map('n', '<leader>s', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
