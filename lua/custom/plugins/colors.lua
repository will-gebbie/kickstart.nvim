return {
  {
    -- 'folke/tokyonight.nvim',
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    -- config = function()
    --   ---@diagnostic disable-next-line: missing-fields
    --   require('tokyonight').setup {
    --     styles = {
    --       comments = { italic = false }, -- Disable italics in comments
    --     },
    --     transparent = true,
    --   }
    -- end,

    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('catppuccin').setup {
        flavour = 'mocha',

        transparent_background = true,
        no_italic = true,
        styles = {
          comments = {},
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,

    --'rebelot/kanagawa.nvim',
    --priority = 1000,
    --config = function()
    --  require('kanagawa').setup {
    --    transparent = true,
    --    commentStyle = { italic = false },
    --  }
    --end,
  },
}
