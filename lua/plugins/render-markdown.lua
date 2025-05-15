return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter'
    },
    config = function()
        require("render-markdown").setup({})
    end,
    ft = { "markdown" },  -- optional lazy-load on markdown files
    cmd = { "RenderMarkdown", "UnrenderMarkdown" },  -- optional lazy-load on command
}

