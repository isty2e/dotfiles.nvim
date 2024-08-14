return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- Normal mode mappings
          f = { "e", desc = "Colemak: Move to end of word" },
          p = { "r", desc = "Colemak: Replace" },
          g = { "t", desc = "Colemak: Till character" },
          j = { "y", desc = "Colemak: Yank" },
          l = { "u", desc = "Colemak: Undo" },
          u = { "i", desc = "Colemak: Insert" },
          y = { "o", desc = "Colemak: Open line" },
          [";"] = { "p", desc = "Colemak: Put" },
          r = { "s", desc = "Colemak: Substitute" },
          s = { "d", desc = "Colemak: Delete" },
          t = { "f", desc = "Colemak: Find character" },
          d = { "g", desc = "Colemak: Go to" },
          n = { "j", desc = "Colemak: Down" },
          e = { "k", desc = "Colemak: Up" },
          i = { "l", desc = "Colemak: Right" },
          o = { ":", desc = "Colemak: Command" },
          k = { "n", desc = "Colemak: Next search" },
          -- Shift combinations
          F = { "E", desc = "Colemak: Move to end of WORD" },
          P = { "R", desc = "Colemak: Replace mode" },
          G = { "T", desc = "Colemak: Till character backward" },
          J = { "Y", desc = "Colemak: Yank line" },
          L = { "U", desc = "Colemak: Undo line" },
          U = { "I", desc = "Colemak: Insert at start of line" },
          Y = { "O", desc = "Colemak: Open line above" },
          [":"] = { "P", desc = "Colemak: Put before" },
          R = { "S", desc = "Colemak: Substitute line" },
          S = { "D", desc = "Colemak: Delete to end of line" },
          T = { "F", desc = "Colemak: Find character backward" },
          D = { "G", desc = "Colemak: Go to line" },
          N = { "J", desc = "Colemak: Join lines" },
          E = { "K", desc = "Colemak: Look up" },
          I = { "L", desc = "Colemak: Right to end of line" },
          O = { ":", desc = "Colemak: Command" },
          K = { "N", desc = "Colemak: Previous search" },
          -- Ctrl combinations
          ["<C-s>"] = { "<C-d>", desc = "Colemak: Scroll down" },
          ["<C-l>"] = { "<C-u>", desc = "Colemak: Scroll up" },
          ["<C-n>"] = { "<C-w>j", desc = "Colemak: Down window" },
          ["<C-e>"] = { "<C-w>k", desc = "Colemak: Up window" },
          ["<C-i>"] = { "<C-w>l", desc = "Colemak: Right window" },
          -- Additional mappings
          ["jj"] = { "yy", desc = "Colemak: Yank line" },
          ["dd"] = { "gg", desc = "Colemak: Go to first line" },
          ["ss"] = { "dd", desc = "Colemak: Delete line" },
          -- Tab changes
          ["<leader>k"] = { ":tabe ", desc = "Open a new tab" },
          ["<leader>m"] = { ":tabp<cr>", desc = "Change to previous tab" },
          ["<leader>."] = { ":tabn<cr>", desc = "Change to next tab" },
          -- Toggle feature
          ["<leader>cm"] = {
            function()
              if vim.g.colemak_mapping == 1 then
                vim.cmd("mapclear")
                vim.g.colemak_mapping = 0
                print("QWERTY mapping activated")
              else
                vim.cmd("source " .. vim.fn.stdpath("config") .. "/lua/plugins/mappings.lua")
                vim.g.colemak_mapping = 1
                print("Colemak mapping activated")
              end
            end,
            desc = "Toggle Colemak/QWERTY mapping"
          },
        },
        x = {
          -- Visual mode mappings
          f = { "e", desc = "Colemak: Move to end of word" },
          p = { "r", desc = "Colemak: Replace" },
          g = { "t", desc = "Colemak: Till character" },
          j = { "y", desc = "Colemak: Yank" },
          l = { "u", desc = "Colemak: Undo" },
          u = { "i", desc = "Colemak: Insert" },
          y = { "o", desc = "Colemak: Open line" },
          [";"] = { "p", desc = "Colemak: Put" },
          r = { "s", desc = "Colemak: Substitute" },
          s = { "d", desc = "Colemak: Delete" },
          t = { "f", desc = "Colemak: Find character" },
          d = { "g", desc = "Colemak: Go to" },
          n = { "j", desc = "Colemak: Down" },
          e = { "k", desc = "Colemak: Up" },
          i = { "l", desc = "Colemak: Right" },
          o = { ":", desc = "Colemak: Command" },
          k = { "n", desc = "Colemak: Next search" },
          -- Shift combinations for visual mode
          F = { "E", desc = "Colemak: Move to end of WORD" },
          P = { "R", desc = "Colemak: Replace mode" },
          G = { "T", desc = "Colemak: Till character backward" },
          J = { "Y", desc = "Colemak: Yank line" },
          L = { "U", desc = "Colemak: Undo line" },
          U = { "I", desc = "Colemak: Insert at start of line" },
          Y = { "O", desc = "Colemak: Open line above" },
          [":"] = { "P", desc = "Colemak: Put before" },
          R = { "S", desc = "Colemak: Substitute line" },
          S = { "D", desc = "Colemak: Delete to end of line" },
          T = { "F", desc = "Colemak: Find character backward" },
          D = { "G", desc = "Colemak: Go to line" },
          N = { "J", desc = "Colemak: Join lines" },
          E = { "K", desc = "Colemak: Look up" },
          I = { "L", desc = "Colemak: Right to end of line" },
          O = { ":", desc = "Colemak: Command" },
          K = { "N", desc = "Colemak: Previous search" },
        },
        o = {
          -- Operator-pending mode mappings
          f = { "e", desc = "Colemak: Move to end of word" },
          p = { "r", desc = "Colemak: Replace" },
          g = { "t", desc = "Colemak: Till character" },
          j = { "y", desc = "Colemak: Yank" },
          l = { "u", desc = "Colemak: Undo" },
          u = { "i", desc = "Colemak: Insert" },
          y = { "o", desc = "Colemak: Open line" },
          [";"] = { "p", desc = "Colemak: Put" },
          r = { "s", desc = "Colemak: Substitute" },
          s = { "d", desc = "Colemak: Delete" },
          t = { "f", desc = "Colemak: Find character" },
          d = { "g", desc = "Colemak: Go to" },
          n = { "j", desc = "Colemak: Down" },
          e = { "k", desc = "Colemak: Up" },
          i = { "l", desc = "Colemak: Right" },
          o = { ":", desc = "Colemak: Command" },
          k = { "n", desc = "Colemak: Next search" },
          -- Shift combinations for operator-pending mode
          F = { "E", desc = "Colemak: Move to end of WORD" },
          P = { "R", desc = "Colemak: Replace mode" },
          G = { "T", desc = "Colemak: Till character backward" },
          J = { "Y", desc = "Colemak: Yank line" },
          L = { "U", desc = "Colemak: Undo line" },
          U = { "I", desc = "Colemak: Insert at start of line" },
          Y = { "O", desc = "Colemak: Open line above" },
          [":"] = { "P", desc = "Colemak: Put before" },
          R = { "S", desc = "Colemak: Substitute line" },
          S = { "D", desc = "Colemak: Delete to end of line" },
          T = { "F", desc = "Colemak: Find character backward" },
          D = { "G", desc = "Colemak: Go to line" },
          N = { "J", desc = "Colemak: Join lines" },
          E = { "K", desc = "Colemak: Look up" },
          I = { "L", desc = "Colemak: Right to end of line" },
          O = { ":", desc = "Colemak: Command" },
          K = { "N", desc = "Colemak: Previous search" },
        },
      },
    },
  },
}
