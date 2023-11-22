return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "cpp",
      "c",
      "python",
      "bash",
      "json",
      "yaml",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "java",
      "ada",
      "haskell",
      "rust",
      "dockerfile",
      "toml",
    })
  end,
}
