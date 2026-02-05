return {
  {
    "nvim-telescope/telescope.nvim",
    version = '*',
    dependencies = {
      "nvim-lua/plenary.nvim",
      'nvim-telescope/telescope-fzf-native.nvim'
    },
    keys = {
	{"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" }

    }
  }
}
