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
# https://qiita.com/k0kubun/items/b118e9ccaef8707c4d9f
# https://tech.smarthr.jp/entry/2021/11/08/143649
# https://ichigick.com/rails-pry-byebug/
if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
  Pry.commands.alias_command 'w', 'watch'
  Pry.commands.alias_command 'display', 'watch'
  Pry.commands.alias_command '=', '@'
  # その他便利コマンド
  # show-source ($) : ソースコードを表示
  # show-method ($) : メソッドの定義を表示
end

# show-stackしてスタックのリストを出しframe [数字]とやると任意のスタックにコンテキストを移動できる。up, downでスタックフレームを上下に移動できる。
# https://qiita.com/k0kubun/items/b118e9ccaef8707c4d9f
if defined?(PryStackExplorer)
  Pry.commands.alias_command 'bt', 'show-stack'
end

# Hit Enter to repeat last command
# https://github.com/deivid-rodriguez/pry-byebug#matching-byebug-behaviour
Pry::Commands.command /^$/, "repeat last command" do
  pry_instance.run_command Pry.history.to_a.last
end