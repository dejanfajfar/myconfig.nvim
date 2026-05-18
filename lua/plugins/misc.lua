-- Miscellaneous plugins (nvim-tree, startup, log-highlight, flutter-tools)

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
          local api = require 'nvim-tree.api'
          if api.tree.is_visible() then
            api.tree.focus()
          else
            api.tree.find_file { open = true, focus = true }
          end
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

  -- Flutter support
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',
    },
    config = true,
  },
}
