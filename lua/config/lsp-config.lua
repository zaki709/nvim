-- nvim-lspconfig を読み込む
local lspconfig = require("lspconfig")

-- solargraphのセットアップ
lspconfig.solargraph.setup({
  on_attach = function(_, bufnr)
    -- ここでバッファローカルのキーマップを設定することもできます
    -- 例: 定義ジャンプ
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  end,
  settings = {
    solargraph = {
      diagnostics = true, -- ソーラグラフの診断機能をON
    },
  },
})
