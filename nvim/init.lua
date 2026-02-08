require('config.options')
require('config.keybinds')
require('config.lazy')

local highlight_groups = {
    "Normal",
    "NormalNC",
    "NormalFloat",
    "FloatBorder",
    "Pmenu",
    "SignColumn",
    "LineNr",
    "EndOfBuffer",
}

for _, group in ipairs(highlight_groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none" })
end
