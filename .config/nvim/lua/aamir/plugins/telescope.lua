return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { 
    "nvim-lua/plenary.nvim" ,
    "nvim-telescope/telescope-git.nvim",
  url = "git@github.com:nvim-telescope/telescope-git.nvim.git"
},
  config = function()
    require("telescope").setup()

  end,
}
