-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        terraformls = {
          filetypes = { "hcl", "terraform", "terraform-vars" },
        },
        tflint = {
          filetypes = { "hcl", "terraform", "terraform-vars" },
          cmd = { "tflint", "--langserver" },
        },
        tailwindcss = {},
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "tflint", "terraformls", "tailwindcss", "eslint" } },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "python",
        "tsx",
        "typescript",
        "vim",
        "hcl",
      },
    },
  },
}
