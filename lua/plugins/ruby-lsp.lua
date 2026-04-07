return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruby_lsp = {
        cmd = { vim.fn.expand("~/.rbenv/shims/ruby-lsp") },
        cmd_env = {
          BUNDLE_GEMFILE = "",
        },
        init_options = {
          formatter = "none",
          linters = {},
        },
      },
    },
  },
}
