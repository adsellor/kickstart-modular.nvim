return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local oil = require 'oil'
    oil.setup {
      experimntal_watch_for_changs = true,
      view_options = {
        show_hidden = true,
      },
    }

    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directiory' })
  end,
}
