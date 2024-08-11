return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      lazy = true,
      enabled = vim.fn.executable "make" == 1 or vim.fn.executable "cmake" == 1,
      build = vim.fn.executable "make" == 1 and "make"
          or
          "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
      config = function(...) require "astronvim.plugins.configs.telescope-fzf-native" (...) end,
    },
  },
  keys = {
    {
      "<leader>ff",
      function() require("telescope.builtin").find_files { no_ignore = true } end,
      desc = "Find all files",
    },
    {
      "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Find words"
    }
  },
}
