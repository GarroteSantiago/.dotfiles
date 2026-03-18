return {
  {
    "iamironz/android-nvim-plugin",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("android").setup({})
    end,
  },
}
