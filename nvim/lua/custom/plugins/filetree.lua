return {
  -- File tree
  {
    -- 'nvim-tree/nvim-tree.lua',
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- 'nvim-tree/nvim-tree.lua',
    },
    cmd = 'Neotree',
    keys = {
      { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
    },
    opts = {
      filesystem = {
        window = {
          mappings = {
            ['\\'] = 'close_window',
          },
        },
      },
    },
    -- config = function(_, opts)
    --   require('nvim-tree').setup()
    --   vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { desc = 'Toggle file (t)ree' })
    -- end,
  },
}
