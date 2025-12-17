return {
  {
    "AstroNvim/astrolsp",
    opts = {
      config = {
        jsonls = {
          on_new_config = function(new_config)
            new_config.settings.json.schemas = new_config.settings.json.schemas or {}
            vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
          end,
          settings = {
            json = {
              validate = { enable = true },
            },
          },
        },
        ts_ls = {
          settings = {
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
              suggest = {
                includeCompletionsForModuleExports = true,
                includeAutomaticOptionalChainCompletions = true,
              },
              preferences = {
                importModuleSpecifier = "relative",
                includePackageJsonAutoImports = "on",
              },
            },
            javascript = {
              suggest = {
                includeCompletionsForModuleExports = true,
              },
            },
          },
        },
      },
    },
  },
  {
    "b0o/schemastore.nvim",
    lazy = true,
  },
}
