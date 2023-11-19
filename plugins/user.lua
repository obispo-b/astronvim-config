return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "folke/zen-mode.nvim",
    event = "BufEnter",
  },
  {
    "ThePrimeagen/harpoon",
    event = "BufEnter",
  },
  {
    "ThePrimeagen/vim-be-good",
    event = "BufEnter",
  },
  {
    "github/copilot.vim",
    event = "BufEnter",
  },
  {
    "windwp/nvim-ts-autotag",
    event = "BufEnter",
    config = function() require("nvim-ts-autotag").setup() end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "mrcjkb/haskell-tools.nvim",
    version = "^3", -- Recommended
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
  },
  {
    "ellisonleao/gruvbox.nvim",
    event = "BufEnter",
  },
  {
    "sainnhe/gruvbox-material",
    event = "BufEnter",
  },
  {
    "navarasu/onedark.nvim",
    event = "BufEnter",
  },
}
