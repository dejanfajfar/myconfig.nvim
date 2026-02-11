-- Miscellaneous plugins (nvim-tree, startup, render-markdown, log-highlight)

return {
  -- File tree
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      view = {
        width = 30,
        side = 'left',
      },
      update_focused_file = {
        enable = true,
        update_root = true,
      },
    },
    keys = {
      {
        '<C-t>',
        function()
          vim.cmd [[NvimTreeOpen]]
        end,
        mode = { 'n' },
        desc = 'Focus on the nvim tree',
      },
    },
  },

  -- Start screen
  {
    'startup-nvim/startup.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-file-browser.nvim' },
    config = function()
      require('startup').setup()
    end,
  },

  -- Markdown rendering
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
    config = function()
      require('render-markdown').setup {
        completions = { blink = { enabled = true } },
      }
    end,
  },

  -- Log file highlighting
  {
    'fei6409/log-highlight.nvim',
  },
}
