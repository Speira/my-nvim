
---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "debugpy",
        "tree-sitter-cli",
        "json-lsp",
        "prettier",
        "eslint_d",
      },
    },
  },
}
