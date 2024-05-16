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


vim.keymap.set("n", "<leader>gd", ":cd /home/ahk/dev<cr>", { desc = 'cd to dev'})
vim.keymap.set("n", "<leader>g.", ":cd /home/ahk/dotfiles<cr>", { desc = 'cd to dotfiles'})



-- Obsidian workflow

-- navigate to vault
vim.keymap.set("n", "<leader>oo", ":cd /home/ahk/obsidian/Pavault<cr>", { desc = 'Navigate to vault'} )
--
-- convert note to template and remove leading white space
vim.keymap.set("n", "<leader>on", ":ObsidianTemplate Note template<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>", { desc = 'Convert to template' })
-- strip date from note title and replace dashes with spaces
-- must have cursor on title
-- vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>", { desc = 'Convert title' })
--
-- search for files in full vault
vim.keymap.set("n", "<leader>os", ":Telescope find_files search_dirs={\"/home/ahk/obsidian/Pavault\"}<cr>", { desc = 'Search files' })
vim.keymap.set("n", "<leader>og", ":Telescope live_grep search_dirs={\"/home/ahk/obsidian/Pavault\"}<cr>", { desc = 'Grep files' })
--

return {}
