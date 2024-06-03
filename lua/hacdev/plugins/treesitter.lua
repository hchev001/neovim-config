return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag"
  },
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "c_sharp", "css", "csv", "go", "graphql", "haskell", "java", "jsdoc", "json", "regex", "scala", "scss", "sql","svelte", "tsx", "dart", "javascript", "typescript", "yaml", "markdown", "dockerfile", "markdown_inline" },
      sync_install = false, -- install parsers synchronously, applies to ensure_installed
      auto_install = false,
      highlight = {
        enable = true
      },
      indent = { enable = true },
      autotag = { enable = true },

    })
  end
}
