# copilot.lua
return {
 "zbirenbaum/copilot.lua",
 cmd = "Copilot", -- :Copilotコマンドが実行されたときにプラグインを読み込む
 build = ":Copilot auth", -- プラグインロード後左記のコマンドを実行
 event = "BufReadPost", -- ファイルが読み込まれた後にプラグインをロード. https://vim-jp.org/vimdoc-ja/autocmd.html
 config = function()
  require("copilot").setup({
   suggestion = {
    auto_trigger = true,
    keymap = {
     accept = "<Tab>", -- Tab で提案を受け入れる
    },
   },
  })
 end,
}
