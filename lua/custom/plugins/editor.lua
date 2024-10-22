return {
  {
    'ggandor/leap.nvim',
    lazy = false,
    config = function()
      local leap = require 'leap'
      leap.opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }
      vim.keymap.set({ 'n', 'x', 'o' }, ',', '<Plug>(leap-forward)')
      vim.keymap.set({ 'n', 'x', 'o' }, ',,', '<Plug>(leap-backward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'gs', '<Plug>(leap-from-window)')

      vim.api.nvim_create_autocmd('ColorScheme', {
        callback = function()
          leap.init_highlight(true)
          vim.api.nvim_set_hl(0, 'LeapLabel', {
            -- For light themes, set to 'black' or similar.
            fg = 'red',
            bg = 'bg',
          })
        end,
      })
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    opts = {
      size = 10,
      open_mapping = [[<C-n>]],
      shading_factor = 2,
      direction = 'float',
      float_opts = {
        border = 'curved',
        highlights = { border = 'Normal', background = 'Normal' },
      },
    },
  },
}
