-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "olimorris/codecompanion.nvim",
    opts = {
      adapters = {
        openai_compatible = function()
          return require("codecompanion.adapters").extend("openai_compatible", {
            env = {
              api_key = os.getenv "CODECOMPANION_OPENAI_API_KEY",
              url = "https://llm.ai.himax.com.tw",
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "openai_compatible",
          model = "meta-llama/Llama-3.3-70B-Instruct",
        },
        inline = {
          adapter = "openai_compatible",
          model = "meta-llama/Llama-3.3-70B-Instruct",
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
