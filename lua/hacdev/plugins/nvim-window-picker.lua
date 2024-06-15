return {
  's1n7ax/nvim-window-picker',
    name = 'window-picker',
    event = 'VeryLazy',
    version = '2.*',
    config = function()

      local windowPicker = require("window-picker")
      windowPicker.setup({
        autoselect_one = true,
        include_current_wn = false,
        filter_rules = {
          bo = {
            -- ignore terminal and help buffers
            filetype = { 'terminal', 'help'},
            buftype = { 'terminal', 'help'}
          }
        },
        other_win_hl_color = '#e35e4f'
      })
    end,
}
