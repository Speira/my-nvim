return {
  "vuki656/package-info.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  event = "BufRead package.json",
  config = function()
    require("package-info").setup()
  end,
  keys = {
    { "K", function() require("package-info").show({ force = true }) end, desc = "Show package info", ft = "json" },
    { "<leader>pt", function() require("package-info").toggle() end, desc = "Toggle package info", ft = "json" },
    { "<leader>pu", function() require("package-info").update() end, desc = "Update package", ft = "json" },
    { "<leader>pd", function() require("package-info").delete() end, desc = "Delete package", ft = "json" },
    { "<leader>pi", function() require("package-info").install() end, desc = "Install package", ft = "json" },
    { "<leader>pc", function() require("package-info").change_version() end, desc = "Change version", ft = "json" },
  },
}
