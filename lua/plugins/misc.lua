-- Miscellaneous plugins (nvim-tree, startup, render-markdown, log-highlight)

return {
  -- File tree
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    cmd = { 'NvimTreeToggle', 'NvimTreeOpen', 'NvimTreeFindFileToggle' },
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      on_attach = function(bufnr)
        local api = require 'nvim-tree.api'
        api.config.mappings.default_on_attach(bufnr)
        vim.keymap.del('n', '<C-v>', { buffer = bufnr })
        vim.keymap.set('n', '<C-s>', api.node.open.vertical, { buffer = bufnr, desc = 'Open in vertical split' })
      end,
      view = {
        width = 30,
        side = 'left',
      },
      update_focused_file = {
        enable = true,
      },
    },
    keys = {
      {
        '<leader>e',
        function()
          vim.cmd 'NvimTreeToggle'
        end,
        mode = { 'n' },
        desc = 'Toggle file [E]xplorer',
      },
    },
  },

  -- Start screen
  {
    'startup-nvim/startup.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
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
    config = function()
      require('render-markdown').setup {
        completions = { blink = { enabled = true } },
      }
    end,
  },

  -- Log file highlighting
  {
    'fei6409/log-highlight.nvim',
    ft = 'log',
  },

  -- Helm support
  {
    'qvalentin/helm-ls.nvim',
    ft = 'helm',
  },
}
