-- FILE: lua/plugins/astrolsp.lua

return {
  "AstroNvim/astrolsp",
  opts = {
    formatting = {
      format_on_save = {
        enabled = false, -- conform.nvim will handle formatting
      },
      disabled = {
        "tsserver",
        "typescript-tools",
        "jsonls",
        "dprint",
      },
    },

    on_attach = function(client, _)
      if client.name == "tsserver" or client.name == "typescript-tools" then
        client.server_capabilities.documentFormattingProvider = false
      end
    end,
    mappings = {
      n = {
        gd = false,
        gr = false,
        gi = false,
        gy = false,
      },
    },
  },
}
