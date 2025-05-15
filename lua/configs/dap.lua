vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.keymap.set("n", "<Leader>dd", function()
      require("dapui").open()
      require("dap").continue()
    end, { buffer = true, desc = "DAP: Open UI and Continue" })
  end,
})

