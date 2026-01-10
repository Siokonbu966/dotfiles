return{
  "rebelot/kanagawa.nvim",  
  lazy = false, -- スタートアップ時に読み込む  
  priority = 1000, -- 他のスタートプラグインより先に読み込む  
  config = function()  
    require('kanagawa').setup({  
      compile = false,             -- カラースキームのコンパイルを有効化  
      undercurl = true,            -- アンダーカールを有効化  
      commentStyle = { italic = true },  
      functionStyle = {},  
      keywordStyle = { italic = true},  
      statementStyle = { bold = true },  
      typeStyle = {},  
      transparent = true,         -- 背景色を設定しない  
      dimInactive = false,         -- 非アクティブウィンドウを暗くする  
      terminalColors = true,       -- 端末色を定義  
      colors = {                   -- テーマとパレット色を追加/変更  
        palette = {},  
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },  
      },  
      overrides = function(colors) -- ハイライトを追加/変更  
        return {}  
      end,  
      theme = "wave",              -- "wave"テーマを読み込む  
      background = {               -- 'background'オプションの値をテーマにマッピング  
        dark = "wave",           -- "dragon" を試してみてください  
        light = "lotus"  
      },  
    }) 
  end  
}
