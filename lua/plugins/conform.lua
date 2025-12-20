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
      javascript = { "eslint_d", "prettierd" },
      javascriptreact = { "eslint_d", "prettierd" },
      typescript = { "eslint_d", "prettierd" },
      typescriptreact = { "eslint_d", "prettierd" },
      json = { "eslint_d", "prettierd" },
      jsonc = { "eslint_d", "prettierd" },
      markdown = { "eslint_d", "prettierd" },
      css = { "eslint_d", "prettierd" },
      scss = {"eslint_d",  "prettierd" },
      yaml = { "eslint_d", "prettierd" },
      python = { "black" },
      dockerfile = {"eslint_d", "prettierd" },
    },
  },
}
