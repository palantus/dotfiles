-- Reset scroll to the middle of the screen when using ctrl+d/u
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

-- Reset currenl line to the middle of the screen when scrolling
vim.keymap.set('n', 'n', 'nzzzv', { noremap = true, silent = true })
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true, silent = true })

-- Close buffer
vim.keymap.set('n', '<leader>dx', ':bd<CR>', { desc = 'Close buffer' })

-- Pastes without losing the copied text when in visual mode
vim.keymap.set('x', '<leader>p', '"_dP', { noremap = true, silent = true })

-- Keymaps for undotree
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', { desc = 'Toggle [U]ndo tree' })

-- Keymaps for treesitter-context (the definition of the function/class that you are in)
vim.keymap.set('n', '[c', function()
  require('treesitter-context').go_to_context(vim.v.count1)
end, { desc = 'Goto [C]ontext' })

return {}
