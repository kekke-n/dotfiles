# https://tamata78.hatenablog.com/entry/2015/11/04/100000
# 色設定メソッドの定義
def Pry.set_color sym, color
  CodeRay::Encoders::Terminal::TOKEN_COLORS[sym] = color.to_s
  { sym => color.to_s }
end

# 色設定の変更
Pry.set_color :integer, "\e[1;36m"

# binding.pryのコマンドのエイリアス
# nextとかcontinueとか毎回打つのが面倒なので、~/.pryrcにエイリアスを登録した
# https://scrapbox.io/ukuh1r8-86980398/binding.pry%E3%81%AE%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%81%AE%E3%82%A8%E3%82%A4%E3%83%AA%E3%82%A2%E3%82%B9
if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
  Pry.commands.alias_command 'w', 'watch'
  Pry.commands.alias_command 'display', 'watch'
  Pry.commands.alias_command '=', '@'
end