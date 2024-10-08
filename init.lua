require 'preferences'
require 'autocoms'

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
-- :Lazy -> lazy.nvim menu      | :Lazy update -> update plugins (also in :Lazy menu)
-- In this section you download plugins through lazy
require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- Basic plugins
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',

  -- LSP Plugins
  require 'plugins.lsp.lazydev',
  { 'Bilal2453/luvit-meta', lazy = true },
  require 'plugins.lsp.nvim-lspconfig',
  require 'plugins.lsp.conform',
  require 'plugins.lsp.nvim-cmp',
  require 'plugins.lsp.typescript-tools',

  --
  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  require 'plugins.mini',

  { 'hiphish/rainbow-delimiters.nvim' },

  require 'plugins.nvim-treesitter', -- Highlight, edit, and navigate code

  -- Code folding
  -- require 'plugins.nvim-ufo',
  -- { 'kevinhwang91/nvim-ufo', enable = false },

  -- Welcome screen
  require 'plugins.dashboard',

  -- AI COMPLETION YAAAAYYYY
  require 'plugins.supermaven',

  -- Emmet language server, for quick shorthands in HTML and CSS
  require 'plugins.nvim-emmet',

  -- MARKDOWN BUT PRETTY AAAA
  require 'plugins.render-markdown',

  -- enables line/block moving through code
  require 'plugins.moveline',

  -- The following two comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  require 'plugins.kickstart.debug',
  require 'plugins.kickstart.indent_line',
  require 'plugins.kickstart.lint',
  require 'plugins.kickstart.autopairs',
  require 'plugins.kickstart.neo-tree',
  require 'plugins.kickstart.gitsigns+', -- adds gitsigns recommend keymaps

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/plugins/misc/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  -- For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  { import = 'plugins.misc' },
  { import = 'colorschemes' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- Choose here your preferred colorscheme
-- This will set it automatically each time you open neovim

-- If you want to test other installed colorscheme, do
-- <leader>sf (leader -> space)
vim.cmd 'colorscheme tokyonight-night'

-- This enables background transparency
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

require 'plugins/rainbow-delimiters'

require 'keymaps'
