return {
  -- TMux integration
  {
    'christoomey/vim-tmux-navigator',
    config = function(_, opts)
      vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<CR>', { desc = 'Tmux left' })
      vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<CR>', { desc = 'Tmux right' })
      vim.keymap.set('n', '<C-j>', ':TmuxNavigateDown<CR>', { desc = 'Tmux down' })
      vim.keymap.set('n', '<C-k>', ':TmuxNavigateUp<CR>', { desc = 'Tmux right' })
    end,
  },
}
