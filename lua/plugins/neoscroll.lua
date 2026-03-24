-- Smooth scrolling
return {
  "karb94/neoscroll.nvim",
  config = function()
    local neoscroll = require("neoscroll")
    neoscroll.setup({
      mappings = {},
      easing = "quadratic",
    })
    local keymap = {
      ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 250 }) end,
      ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 250 }) end,
    }
    for key, func in pairs(keymap) do
      vim.keymap.set({ "n", "v", "x" }, key, func)
    end
  end,
}
