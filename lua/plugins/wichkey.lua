return {
  config = function()
    local wk = require("which-key")
    local keymaps = require("keymaps")

    wk.setup({
      plugins = {
        spelling = {
          enabled = true,
          suggestions = 20,
        },
      },
      window = {
        border = "single",
        position = "bottom",
      },
    })

    

    -- Converter mapeamentos para o formato do which-key:
    --
    local mappings = {}

    for _, keymap in ipairs(keymaps) do
      local prefix = keymap.lhs:sub(1, 2)
      local key = keymap.lhs:sub(3)
      mappings[prefix] = mappings[prefix] or { name = "Prefix" }
      mappings[prefix][key] = keymap.opts.desc
    end

    wk.register(mappings, { prefix = "<leader>" })
  end
}

