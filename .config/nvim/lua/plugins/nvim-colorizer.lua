return {
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      filetypes = { "*" },
      user_default_options = {
        RGB = true,        -- #RGB and #RRGGBB
        RRGGBBAA = true,   -- #RRGGBBAA
        css = true,        -- CSS colors
        css_fn = true,     -- CSS color functions like rgb(), hsl()
      },
    },
  },
}
