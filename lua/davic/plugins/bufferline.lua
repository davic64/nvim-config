return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        style_preset = require("bufferline").style_preset.minimal,
        themable = true,
        numbers = "none",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
          icon = "",
          style = "none",
        },
        buffer_close_icon = "󰅖",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 25,
        max_prefix_length = 25,
        truncate_names = true,
        tab_size = 18,
        diagnostics = false,
        diagnostics_update_in_insert = false,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = false,
        show_duplicate_prefix = true,
        persist_buffer_sort = true,
        move_wraps_at_ends = false,
        separator_style = {"", ""},
        enforce_regular_tabs = true,
        always_show_bufferline = false,
        hover = {
          enabled = false,
          delay = 200,
          reveal = {"close"},
        },
        sort_by = "insert_after_current",
        offsets = {
          {
            filetype = "neo-tree",
            text = "",
            text_align = "left",
            separator = false,
          },
        },
      },
      highlights = {
        fill = {
          bg = "NONE",
        },
        background = {
          bg = "NONE",
        },
        tab = {
          bg = "NONE",
        },
        tab_selected = {
          bg = "NONE",
        },
        tab_separator = {
          fg = "NONE",
          bg = "NONE",
        },
        tab_separator_selected = {
          fg = "NONE",
          bg = "NONE",
        },
        buffer_visible = {
          bg = "NONE",
        },
        buffer_selected = {
          bg = "NONE",
          bold = true,
          italic = false,
        },
        numbers = {
          bg = "NONE",
        },
        numbers_visible = {
          bg = "NONE",
        },
        numbers_selected = {
          bg = "NONE",
        },
        diagnostic = {
          bg = "NONE",
        },
        diagnostic_visible = {
          bg = "NONE",
        },
        diagnostic_selected = {
          bg = "NONE",
        },
        hint = {
          bg = "NONE",
        },
        hint_visible = {
          bg = "NONE",
        },
        hint_selected = {
          bg = "NONE",
        },
        hint_diagnostic = {
          bg = "NONE",
        },
        hint_diagnostic_visible = {
          bg = "NONE",
        },
        hint_diagnostic_selected = {
          bg = "NONE",
        },
        info = {
          bg = "NONE",
        },
        info_visible = {
          bg = "NONE",
        },
        info_selected = {
          bg = "NONE",
        },
        info_diagnostic = {
          bg = "NONE",
        },
        info_diagnostic_visible = {
          bg = "NONE",
        },
        info_diagnostic_selected = {
          bg = "NONE",
        },
        warning = {
          bg = "NONE",
        },
        warning_visible = {
          bg = "NONE",
        },
        warning_selected = {
          bg = "NONE",
        },
        warning_diagnostic = {
          bg = "NONE",
        },
        warning_diagnostic_visible = {
          bg = "NONE",
        },
        warning_diagnostic_selected = {
          bg = "NONE",
        },
        error = {
          bg = "NONE",
        },
        error_visible = {
          bg = "NONE",
        },
        error_selected = {
          bg = "NONE",
        },
        error_diagnostic = {
          bg = "NONE",
        },
        error_diagnostic_visible = {
          bg = "NONE",
        },
        error_diagnostic_selected = {
          bg = "NONE",
        },
        modified = {
          bg = "NONE",
        },
        modified_visible = {
          bg = "NONE",
        },
        modified_selected = {
          bg = "NONE",
        },
        duplicate_selected = {
          bg = "NONE",
        },
        duplicate_visible = {
          bg = "NONE",
        },
        duplicate = {
          bg = "NONE",
        },
        separator_selected = {
          fg = "NONE",
          bg = "NONE",
        },
        separator_visible = {
          fg = "NONE",
          bg = "NONE",
        },
        separator = {
          fg = "NONE",
          bg = "NONE",
        },
        pick_selected = {
          bg = "NONE",
        },
        pick_visible = {
          bg = "NONE",
        },
        pick = {
          bg = "NONE",
        },
        offset_separator = {
          fg = "NONE",
          bg = "NONE",
        },
      },
    })
  end,
}