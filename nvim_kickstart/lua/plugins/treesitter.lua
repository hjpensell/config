return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
	  ensure_installed = { "go", "gomod", "gosum", "gowork"},
	  highligh = { enable = true },
  }
}
