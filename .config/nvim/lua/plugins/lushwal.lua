return {
  {
    "oncomouse/lushwal.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
      "rktjmp/shipwright.nvim"
    },
    config = function()
      vim.cmd.colorscheme("lushwal")

      require("lushwal").add_reload_hook({
        vim.cmd.colorscheme("lushwal"),
      })
    end,
  },
}
