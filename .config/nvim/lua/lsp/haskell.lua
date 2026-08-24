vim.api.nvim_create_autocmd("FileType", {
  pattern = "hs",
  callback = function()

    local lsp = vim.lsp

    lsp.start({
        name = "hls",
        cmd = { "haskell-language-server-9.10.3" },

        root_dir = vim.fs.root({
            ".git",
            ".cabal"
        })
    })
  end
})
