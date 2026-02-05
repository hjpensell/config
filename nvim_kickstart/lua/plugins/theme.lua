return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require('kanagawa').setup({
      theme = "dragon", -- This is the version with no purple/pink
    })
    vim.cmd("colorscheme kanagawa")
  end,
}
