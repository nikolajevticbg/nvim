return {
  {
      "zbirenbaum/copilot-cmp",
      dependencies = "copilot.lua",
      lazy = false,
      opts = {},
      config = function(_, opts)
          local copilot_cmp = require("copilot_cmp")
          -- local status_ok, copilot = pcall(require, "copilot")
          copilot_cmp.setup(opts)
          -- attach cmp source whenever copilot attaches
          -- fixes lazy-loading issues with the copilot cmp source

          copilot_cmp._on_insert_enter()
      end,
  }
}
