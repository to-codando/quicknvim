local M = {}

M.config = function()
  local alpha = require('alpha')
  local dashboard = require('alpha.themes.dashboard')

  dashboard.section.header.val = {
"                                                           ",
"#  :::    :::  ::::::::   ::::::::  :::::::::  ::::::::::  ",
"#  :+:    :+: :+:    :+: :+:    :+: :+:    :+: :+:         ",
"#  +:+    +:+ +:+        +:+    +:+ +:+    +:+ +:+         ",
"#  +#+    +:+ +#+        +#+    +:+ +#+    +:+ +#++:++#    ",
"#  +#+    +#+ +#+        +#+    +#+ +#+    +#+ +#+         ",
"#  #+#    #+# #+#    #+# #+#    #+# #+#    #+# #+#         ",
"#   ########   ########   ########  #########  ##########  ",
"                                                           ",
  }

  dashboard.section.buttons.val = {
    dashboard.button("e", "  Novo arquivo", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "  Encontrar arquivo", ":Telescope find_files<CR>"),
    dashboard.button("r", "  Recentes", ":Telescope oldfiles<CR>"),
    dashboard.button("q", "  Sair", ":qa<CR>"),
  }

  local function footer()
    return "Bem-vindo ao uCode!"
  end

  dashboard.section.footer.val = footer()

  -- Definindo o layout corretamente
  dashboard.config.layout = {
    { type = "padding", val = 1 },
    dashboard.section.header,
    { type = "padding", val = 2 },
    dashboard.section.buttons,
    { type = "padding", val = 1 },
    dashboard.section.footer,
  }

  alpha.setup(dashboard.config)
end

return M


