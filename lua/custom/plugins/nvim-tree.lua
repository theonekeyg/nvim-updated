-- File explorer written in lua

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      -- on_attach = function()
      --   local api = require 'nvim-tree.api'
      --   -- vim.keymap.set('n', '\\', api.)
      -- end,
    }

    -- Keymaps
    local api = require 'nvim-tree.api'
    vim.keymap.set('n', '\\', api.tree.open, { desc = 'Open nvim-tree' })
    vim.keymap.set('n', '<leader>\\', function()
      api.tree.open {
        path = vim.fs.dirname(vim.api.nvim_buf_get_name(0)),
      }
    end, { desc = "Open nvim-tree in current file's directory" })
  end,
}
