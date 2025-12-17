-- FILE: lua/plugins/conform.lua
return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  opts = {
    format_on_save = function(bufnr)
      local ft = vim.bo[bufnr].filetype
      local supported = {
        "javascript", "typescript", "javascriptreact", "typescriptreact",
        "json", "jsonc", "markdown", "css", "scss", "yaml", "python",
        "dockerfile"
      }
      for _, type in ipairs(supported) do
        if ft == type then
          return { timeout_ms = 5000, lsp_fallback = false }
        end
      end
    end,
    formatters_by_ft = {
      javascript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescript = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      json = { "prettier" },
      jsonc = { "prettier" },
      markdown = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      yaml = { "prettier" },
      python = { "black" },
      dockerfile = { "prettier" },
    },
  },
}
