# narou-docker


## 概要
WEB小説からの電子書籍データ変換支援ツール
[Narou.rb](https://github.com/whiteleaf7/narou)をDocker上で動作させます。

## 使い方

### 1. コンテナを起動します
`$ docker run -p 127.0.0.1:8000-8001:8000-8001 -v 保存場所へのフルパス:/opt/narou migimigi/narou`
### 2. 以下のURLを開きます
http://localhost:8000/

## WebUIを使わず使用するには
`$ docker run -t -v 保存場所へのフルパス:/opt/narou migimigi/narou narou help`
とコンテナ名に続けて`narou コマンド`を入力してください。
