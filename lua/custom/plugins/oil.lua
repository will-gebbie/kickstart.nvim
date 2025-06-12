return {

  'stevearc/oil.nvim',
  opts = {
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),

    keymaps = {

      ['gl'] = 'actions.refresh',
      ['<C-l>'] = false,
      ['<C-h>'] = false,
    },
  },
}
