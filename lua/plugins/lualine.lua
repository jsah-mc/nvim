return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {},
  specs = {
    {
      "rebelot/heirline.nvim",
      optional = true,
      opts = function(_, opts) opts.statusline = nil end,
    },
  },
  config = function()
    -- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
  local colors = {
    blue   = '#89B4FA',
    cyan   = '#89DCEB',
    black  = '#11111B',
    white  = '#CDD6F4',
    red    = '#F38BA8',
    violet = '#F5C2E7',
    grey   = '#1E1E2E',
  }

    local bubbles_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.blue },
        b = { fg = colors.white },
        c = { fg = colors.white },
      },

      insert = { a = { fg = colors.black, bg = colors.cyan } },
      visual = { a = { fg = colors.black, bg = colors.violet } },
      replace = { a = { fg = colors.black, bg = colors.red } },
      command = { a = { fg = colors.white, bg = colors.grey } },
      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }

    require("lualine").setup {
      options = {
        theme = bubbles_theme,
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = {
          { "mode", icon = "", separator = { left = "", right = "" }, left_padding = 1, right_padding = 2 },
        },
        lualine_b = { "filename" },
        lualine_c = {

          "%=", --[[ add your center components here in place of this comment ]]
          {
            "branch",
            icon = "",
            separator = { left = "", right = "" },
            left_padding = 1,
            right_padding = 2,
          },

          "%=",
        },
        lualine_x = {},
        lualine_y = { "filetype" },
        lualine_z = {
          {
            "location",
            separator = { right = "", left = "" },
            left_padding = 0,
            right_padding = 0,
            icon = "󰣇",
          },
        },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
      tabline = {},
      extensions = {},
    }
  end,
}
