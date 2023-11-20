return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<M-i>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>q"] = { "<cmd>qa!<cr>", desc = "Quit all" },
    -- ZenMode
    ["<leader>z"] = { "<cmd>ZenMode<CR>", desc = "ZenMode" },

    -- Harpoon
    ["<leader>h"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Harpoon quick menu" },
    ["<leader>a"] = { "<cmd>lua require('harpoon.mark').add_file()<CR>", desc = "Harpoon add file" },
    ["<leader>1"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", desc = "Harpoon to 1" },
    ["<leader>2"] = { "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", desc = "Harpoon to 2" },
    ["<leader>3"] = { "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", desc = "Harpoon to 3" },
    ["<leader>4"] = { "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", desc = "Harpoon to 4" },
    ["<Tab>"] = false,
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<M-i>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
}
