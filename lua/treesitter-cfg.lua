local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then return end

configs.setup {
    ensure_installed = {
        "bash",
        "astro",
        "c",
        "dart",
        "diff",
        "dockerfile",
        "dot",
        "gdscript",
        "gitcommit", "gitignore", "gitattributes", "git_rebase", "git_config",
        "go", "gomod",
        "html", "css", "scss",
        "javascript", "typescript", "tsx",
        "jsdoc",
        "json", "json5", "jsonc",
        "lua", "luadoc",
        "make",
        "markdown", "markdown_inline",
        "python",
        "ruby",
        "rust",
        "sql",
        "vim", "vimdoc",
        "yaml", "toml", "ini",
    },
    sync_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
