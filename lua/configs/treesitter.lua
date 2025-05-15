local options = {
  ensure_installed = {
    "html",
    "python",
    "c_sharp",
    "markdown",
    "markdown_inline"
  },

  highlight = {
    enable = true,
    use_languagetree = true
  },

  indent = { enable = true}
}

require("nvim-treesitter.configs").setup(options)
