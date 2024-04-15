return {
    "gelguy/wilder.nvim",
    config = function()
        local wilder = require("wilder")
        local macchiato = require("catppuccin.palettes").get_palette("macchiato")

        local text_highlight = wilder.make_hl("WilderText", { { a = 1 }, { a = 1 }, { foreground = macchiato.text } })
        local blue_highlight = wilder.make_hl("WilderMauve", { { a = 1 }, { a = 1 }, { foreground = macchiato.blue } })

        wilder.setup({ modes = { ":", "/", "?", }, })

        wilder.set_option('renderer', wilder.popupmenu_renderer(
            wilder.popupmenu_border_theme({
                highlights = {
                    default = text_highlight,
                    border = blue_highlight,
                    accent = blue_highlight,
                },
                border = 'rounded',
                left  = { " ", wilder.popupmenu_devicons() },
                right = { " ", wilder.popupmenu_scrollbar() },
            })
        ))
    end
}
