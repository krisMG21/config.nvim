return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = {

          [[                                                                       ]],
          [[                                                                     ]],
          [[       ████ ██████           █████      ██                     ]],
          [[      ███████████             █████                             ]],
          [[      █████████ ███████████████████ ███   ███████████   ]],
          [[     █████████  ███    █████████████ █████ ██████████████   ]],
          [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
          [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
          [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[]],
          [[]],
          [[]],
        }, --your header
        center = {
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Search File          ',
            desc_hl = 'Title',
            key = ' ',
            keymap = '<leader> s f  ',
            key_format = ' %s', -- remove default surrounding `[]`
            action = '<leader>sf',
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Search Content          ',
            desc_hl = 'Title',
            key = ' ',
            keymap = '<leader> s /  ',
            key_format = ' %s', -- remove default surrounding `[]`
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Reveal File Tree          ',
            desc_hl = 'Title',
            key = 't',
            keymap = 'Ctrl + N  ',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'Neotree filesystem reveal left toggle',
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Config Folder          ',
            desc_hl = 'Title',
            key = 'c',
            keymap = '~/.config/nvim  ',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'e ~/.config/nvim',
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Create New File          ',
            desc_hl = 'Title',
            key = 'n',
            keymap = '',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'new',
          },
          {
            icon = '󰩈 ',
            icon_hl = 'Title',
            desc = 'Exit          ',
            desc_hl = 'Title',
            key = 'q',
            keymap = '',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'q',
          },
        },

        footer = {
          [[                                                                         ]],
          [[                                                                         ]],
          [[                                                                         ]],
          [[                                                                     ]],
          [[██  󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰󱋰  ██ ]],
        }, --your footer
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
