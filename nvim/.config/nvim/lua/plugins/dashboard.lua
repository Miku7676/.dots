return{
  "goolord/alpha-nvim",
  config = function()
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[]],
      [[███╗   ███╗    ██╗    ██╗  ██╗    ██╗   ██╗       ███████╗]],
      [[████╗ ████║    ██║    ██║ ██╔╝    ██║   ██║       ██╔════╝]],
      [[██╔████╔██║    ██║    █████╔╝     ██║   ██║       ███████╗]],
      [[██║╚██╔╝██║    ██║    ██╔═██╗     ██║   ██║       ╚════██║]],
      [[██║ ╚═╝ ██║    ██║    ██║  ██╗    ╚██████╔╝▄█╗    ███████║]],
      [[╚═╝     ╚═╝    ╚═╝    ╚═╝  ╚═╝     ╚═════╝ ╚═╝    ╚══════╝]],
      [[                                                          ]],
      [[       ███╗   ██╗    ██╗   ██╗    ██╗    ███╗   ███╗      ]],
      [[       ████╗  ██║    ██║   ██║    ██║    ████╗ ████║      ]],
      [[       ██╔██╗ ██║    ██║   ██║    ██║    ██╔████╔██║      ]],
      [[       ██║╚██╗██║    ╚██╗ ██╔╝    ██║    ██║╚██╔╝██║      ]],
      [[       ██║ ╚████║     ╚████╔╝     ██║    ██║ ╚═╝ ██║      ]],
      [[       ╚═╝  ╚═══╝      ╚═══╝      ╚═╝    ╚═╝     ╚═╝      ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
      dashboard.button( "f", "?  > Find file", ":Telescope find_files<CR>"),
      dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
      dashboard.button( "q", "X  > Quit NVIM", ":qa<CR>"),
    }
    require("alpha").setup(
      dashboard.config
    )
    vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
    ]])
  end,
}



