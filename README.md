[銀座Rails#19](https://ginza-rails.connpass.com/event/166729/)の発表で使ったサンプルコードです。

スライドは[こちら](https://speakerdeck.com/free_world21/railstoserverlessji-shu-detie-dao-apuriwozuo-tutahua-nazepu-harubydebainariwopasusitafalseka)

# 実行方法

以下のコマンドで

```bash
$ ruby sample.rb
```

# 簡単な解説
- `sample.rb`: サンプルコード本体。`pry-byebug`が入ってるのでお好きなところで`binding.pry`してください。
- `binary_data/input.data`: [職人](https://twitter.com/free_world21)が心を込めて1バイト1バイト手作りした入力用のサンプルバイナリデータ
- `binary_data/output.data`: `sample.rb`を実行するとできあがるバイナリデータ。
