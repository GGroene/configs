return {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    keys = {
        { "<c-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "move focus to Tmux/window left" },
        { "<c-j>", "<cmd>TmuxNavigateDown<cr>", desc = "move focus to Tmux/window down" },
        { "<c-k>", "<cmd>TmuxNavigateUp<cr>", desc = "move focus to Tmux/window up" },
        { "<c-l>", "<cmd>TmuxNavigateRight<cr>", desc = "move focus to Tmux/window right" },
    },
}
