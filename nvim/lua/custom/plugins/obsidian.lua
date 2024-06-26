return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = false,
  -- ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    'BufReadPre '
    .. vim.fn.expand '~'
    .. '/obsidian/Pavault/**.md',
    'BufNewFile ' .. vim.fn.expand '~' .. '/obsidian/Pavault/**.md',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'nvim-telescope/telescope.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    workspaces = {
      {
        name = 'Pavault',
        path = vim.fn.expand '~' .. '/obsidian/Pavault',
      },
    },
    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,
      -- Trigger completion at 2 chars.
      min_chars = 2,
    },
    -- see below for full list of options 👇
    templates = {
      subdir = 'Templates',
      date_format = '%Y-%m-%d',
      time_format = '%H:%M',
    },
    daily_notes = {
      folder = 'Daily',
      date_format = '/%Y/%m/%Y-%m-%d',
      template = "Daily template",
    },
  },
}
