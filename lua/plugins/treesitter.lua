return {
    {
        "nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                ensure_installed = {"lua", "c", "c_sharp", "java", "caddy", "cmake", "dockerfile", "json", "nginx", "python", "rust", "sql"},
                highlight = {enable = true},
                indent = {enable = true},
            })
        end
    }
}
