# APIモードを試す

- マイクロサービスアーキテクチャへの理解を深めるため、railsをAPIモードで動かしてみる
- またRailsをwebアプリ、ネイティブアプリの共通のAPIサーバーとして使ってみたい

## APIとは
Application Programming Interface

アプリケーションの窓口みたいなもの。APIを使うことで、アプリ側がブラックボックスのままでもデータのやり取りができる(apiを叩くとか言われる)

参考
https://qiita.com/NagaokaKenichi/items/df4c8455ab527aeacf02

## RailsをAPIモードで使う

`$ rails new アプリ名 --api`

APIモードについての参考
- https://www.slideshare.net/fumiyasakai37/rails5api
- https://railsguides.jp/api_app.html

## JSONについて
JavaScript Object Notation

JSのオブジェクト(ハッシュ)と同じ文法で記述できるデータフォーマット

参考: https://qiita.com/SotaSuzuki/items/c3b46c4e24c1ca9b4d37

## テスト
'resources: users'のテストをrequest_specに一通り記述
