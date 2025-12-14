return {
  n = {
    ["gd"] = {
      function() vim.lsp.buf.definition() end,
      desc = "Go to definition"
    },
    ["gr"] = {
      function() vim.lsp.buf.references() end,
      desc = "Show references"
    },
    ["gi"] = {
      function() vim.lsp.buf.implementation() end,
      desc = "Go to implementation"
    },
    ["gy"] = {
      function() vim.lsp.buf.type_definition() end,
      desc = "Go to type definition"
    },
  },
}
