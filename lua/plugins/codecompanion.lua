-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "olimorris/codecompanion.nvim",
    opts = {
      adapters = {
        http = {
          openai_compatible = function()
            return require("codecompanion.adapters").extend("openai_compatible", {
              env = {
                api_key = os.getenv "CODECOMPANION_OPENAI_API_KEY",
                url = os.getenv "CODECOMPANION_OPENAI_API_URL",
              },
            })
          end,
        },
      },
      strategies = {
        chat = {
          adapter = {
            name = "openai_compatible",
            model = "openai/gpt-oss-120b",
          },
        },
        inline = {
          adapter = {
            name = "openai_compatible",
            model = "openai/gpt-oss-120b",
          },
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
