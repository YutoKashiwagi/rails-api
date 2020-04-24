# APIモードを試す

マイクロサービスアーキテクチャへの理解を深めるため、railsをAPIモードで動かしてみる

## APIとは
Application Programming Interface

アプリケーションの窓口みたいなもの。APIを使うことで、アプリ側をブラックボックスのままデータのやり取りができる(apiを叩くとか言われる)

参考
https://qiita.com/NagaokaKenichi/items/df4c8455ab527aeacf02

## RailsをAPIモードで使う

`$ rails new アプリ名 --api`

## JSONについて
JavaScript Object Notation
JSのオブジェクト(ハッシュ)と同じ文法で記述できるデータフォーマット

