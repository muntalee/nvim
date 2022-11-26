-- for neovide
vim.opt.guifont = { "JetBrainsMono Nerd Font", "h64" }
-- vim.g.neovide_transparency = 0.0
-- vim.g.transparency = 0.8
-- vim.cmd [[let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))]]

-- colorscheme
vim.cmd [[colorscheme tokyonight-moon]]
vim.cmd [[set termguicolors]]
vim.g.dashboard_default_executive = 'telescope'

-- lualine setup
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
