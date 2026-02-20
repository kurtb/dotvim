return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "typescript",
                "javascript",
                "python",
                "lua",
                "json",
                "markdown",
                "markdown_inline",
            },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        },
    },
}
