local rust_tools = require "rust-tools"

rust_tools.setup {
  tools = {
    runnables = {
      use_telescope = true,
    },

    inlay_hints = {
      auto = true,
      show_parameter_hint = false,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
    },
  },

  server = {
    on_attach = on_attach,
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
}
