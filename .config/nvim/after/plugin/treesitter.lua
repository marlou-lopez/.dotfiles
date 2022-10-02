local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
    return
end

configs.setup {
    ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "html",
        "scss",
        "css"
    },
    sync_install = false,
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
}
