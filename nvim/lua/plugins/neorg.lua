return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.export"] = {}, -- Allows exporting to different formats
          ["core.export.markdown"] = {}, -- Export to Markdown specifically
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                work = "~/notes/work",
                home = "~/notes/home",
                game = "~/notes/game",
                spec = "~/notes/spec",
              },
              default_workspace = "work",
            },
          },
        },
      }
    end,
}
