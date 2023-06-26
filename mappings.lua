-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- second key is the lefthand side of the map
  -- mappings seen under group name "Buffer"
  n = {
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },

    -- quickFix
    ["[c"] = { "<cmd>cprevious<cr>", desc = "Previous quickfix"},
    ["]c"] = { "<cmd>cnext<cr>", desc = "Next quickfix"},
    ["[q"] = { "<cmd>colder<cr>", desc = "Open quickfix" },
    ["]q"] = { "<cmd>cnewer<cr>", desc = "Close quickfix" },

    -- fastmove
    ["H"] = { "10h", desc = "Fastmove left" },
    ["J"] = { "10j", desc = "Fastmove down" },
    ["K"] = { "10k", desc = "Fastmove up" },
    ["L"] = { "10l", desc = "Fastmove right" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    -- escape
    ["jj"] = { "<Esc>", desc = "Escape", silent = true },

    -- Emacs like
    ['<C-j>']={ '<Down>'},
    ['<C-k>']={ '<Up>'},
    ['<C-h>']={ '<Left>'},
    ['<C-l>']={ '<Right>'},
    ['<C-b>']={ '<Left>'},
    ['<C-f>']={ '<Right>'},
    ['<C-a>']={ '<Esc> I'},
    ['<C-e>']={ '<Esc> A'}
  },
  c = {

  },
  x = {

  },
}
