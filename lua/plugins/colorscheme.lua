return {
  {
    -- Plugin for the Catppuccin color scheme
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- Load this plugin immediately
    opts = {
      transparent_background = true, -- Enable transparent background
      flavour = "mocha", -- Set the flavor of the color scheme
    },
    integrations = {
      cmp = true, -- Enable integration with nvim-cmp
      gitsigns = true, -- Enable integration with gitsigns
      nvimtree = true, -- Enable integration with nvim-tree
      treesitter = true, -- Enable integration with treesitter
      notify = false, -- Disable integration with nvim-notify
      mini = {
        enabled = true, -- Enable mini plugin integration
        indentscope_color = "", -- Set indentscope color (empty means default)
      },
      -- Additional plugin integrations can be found in the documentation
    },
  },
  {
    -- Plugin for the Modus Themes
    "miikanissi/modus-themes.nvim",
    name = "modus",
    priority = 1000, -- High priority to ensure it loads early
  },
  {
    -- Plugin for the Kanagawa color scheme
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000, -- High priority to ensure it loads early
    opts = {
      transparent = true, -- Enable transparent background
      theme = "dragon", -- Set the theme variant to 'dragon'
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" }, -- Transparent background for floating windows
          FloatBorder = { bg = "none" }, -- Transparent background for floating window borders
          FloatTitle = { bg = "none" }, -- Transparent background for floating window titles

          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 }, -- Custom colors for dark mode

          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Custom colors for Lazy plugin
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Custom colors for Mason plugin

          TelescopeTitle = { fg = theme.ui.special, bold = true }, -- Custom colors for Telescope titles
          TelescopePromptNormal = { bg = theme.ui.bg_p1 }, -- Custom colors for Telescope prompt
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 }, -- Custom colors for Telescope prompt border
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 }, -- Custom colors for Telescope results
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 }, -- Custom colors for Telescope results border
          TelescopePreviewNormal = { bg = theme.ui.bg_dim }, -- Custom colors for Telescope preview
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim }, -- Custom colors for Telescope preview border

          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- Custom colors for popup menu
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 }, -- Custom colors for selected item in popup menu
          PmenuSbar = { bg = theme.ui.bg_m1 }, -- Custom colors for popup menu scrollbar
          PmenuThumb = { bg = theme.ui.bg_p2 }, -- Custom colors for popup menu thumb
        }
      end,
    },
  },
  -- Plugin for the Rose Pine color scheme
  { "rose-pine/neovim", name = "rose-pine" },
  { "projekt0n/github-nvim-theme", name = "github-theme" },
  -- Plugin for the Oxocarbon color scheme
  { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon" },
  -- Plugin for the Lush color scheme with a dependency on Zenbones
  { "rktjmp/lush.nvim", dependencies = { "mcchrish/zenbones.nvim" } },
  {
    -- Plugin for the Cyberdream color scheme
    "scottmckendry/cyberdream.nvim",
    lazy = false, -- Load this plugin immediately
    priority = 1000, -- High priority to ensure it loads early
  },
  -- Plugin for the Doom One color scheme
  { "NTBBloodbath/doom-one.nvim", name = "doom-one" },
  -- Plugin for the Aylin color scheme
  { "AhmedAbdulrahman/aylin.vim", name = "aylin" },
  {
    -- Plugin for enabling transparency
    "xiyaowong/transparent.nvim",
  },
  {
    -- Plugin for the Bamboo color scheme
    "ribru17/bamboo.nvim",
    lazy = false, -- Load this plugin immediately
  },
  {
    -- Plugin for the Everforest color scheme
    "neanias/everforest-nvim",
    version = false, -- Use the latest version
    lazy = false, -- Load this plugin immediately
    config = function()
      require("everforest").setup({
        background = "hard", -- Set the background to 'hard'
        italis = true, -- Enable italics
        transparent_background_level = 1, -- Uncomment to enable transparency
        diagnostic_text_highlight = true, -- Enable diagnostic text highlight
        diagnostic_virtual_text = "coloured", -- Set diagnostic virtual text to colored
        colours_override = function(palette)
          palette.bg0 = "#1A1A22" -- Override background color
        end,
      })
    end,
  },
  {
    -- Plugin for the Oldworld color scheme
    "dgox16/oldworld.nvim",
    lazy = false, -- Load this plugin immediately
    priority = 1000, -- High priority to ensure it loads early
  },
  {
    "Luxed/ayu-vim",
    name = "ayu",
  },
  { "projekt0n/github-nvim-theme", name = "github-theme" },
  {
    -- LazyVim configuration
    "LazyVim/LazyVim",
    opts = {
      -- Set the default color scheme
      -- tokyonight, gruvbox, onedark, rose-pine, catppuccino, everforest, nord, ayu, github-theme
      colorscheme = "ayu",
    },
  },
}
