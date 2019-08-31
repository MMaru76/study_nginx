# Nginx Study

## 参考サイト

- https://gist.github.com/kenjiskywalker/4698573

## 参考本

- Nginx ポケットリファレンス
- 2015年 10月 25日 初版 第1刷発行

## 検証環境

- OS
  - CentOS-7-x86_64-Minimal-1810.iso
- Nginx
  - 1.17.3

## ディレクティブの基本的な説明

[nginx](centos6_nginx/nginx/nginx_olg.conf) の基本的な説明ファイル

- main ディレクティブ

```
Nginxの動作全般に関するコア機能はmainディレクティブのコンテキストで設定
最低限必要なWebサーバーの情報を記述する場所
```

- events ディレクティブ

```
Eventsモジュールに関する設定
最大コネクション数や､リクエストを同時に受け付けるかの設定
パフォーマンス全般に関する項目の設定場所
```

- http ディレクティブ

```
HTTPモジュールまたは､HTTP_〇〇モジュールに関する設定
Webサーバとしての設定をする場所
```

- server ディレクティブ

```
バーチャルサーバーの設定
バーチャルサーバーが複数の場合は､対応するserverコンテキストを複数記述
各バーチャルサーバはIPアドレス/名前ベースで区別
バーチャルサーバは1台のWebサーバ上で複数のWebサイトを運用するの事も可能だが､NginxではWebサーバ上に1サイトしかなくても､バーチャルサーバーを使って運用するのが一般的である｡
```

- location ディレクティブ

```
URLのパスに応じて設定を記述
リクエストされたURLのパスがこのlocationで指定されたパスの条件に一致した場合､locationコンテキスト内の設定が適用れます｡
リクエストURIのパスが/で始まっている場合はすなわち､すべてのパスについて適用されます｡
```

## 基本的なコマンド

```
nginx を起動させる方法は色々ですが､パスが通っていたりしないと実行する事はできません｡

# /usr/sbin/nginx
または､
# nginx

// バージョン確認
# nginx -v

// サービスの起動など(CentOS7以降)
# systemctl (start/status/stop/restart) nginx

// サービスの起動など(CentoOS6以前)
# service nginx (start/status/stop/restart)

// 設定ファイルの読み直し
# systemctl reload nginx
# /usr/sbin/nginx -s reload

// 設定ファイルのチェック
# nginx -t

// http_ssl_module の確認
// ｢--with-http_ssl_module] が含まれているかを確認
# nginx -V
```

## 基本的な設定ファイルの場所

```
// メインの設定ファイル
cd /etc/nginx/

// 各サーバー用設定ファイル
cd /etc/nginx/conf.d/
```

## ログの配置確認

初期設定の場合

```
// 各種ログの配置場所
# cd /var/log/nginx/

// エラーログ
# less /var/log/nginx/error.log

// アクセスログ
# less /var/log/nginx/access.log
```

## ファイルの基本的な用途

|file|desc|
|:--:|:--:|
|nginx.conf|Nginx全般の設定|
|mime.types|MIMEタイプと拡張子の関連(参考1)|
|fastcgi_params|FastCGI設定|
|scgi_params|SCGI設定|
|uwsgi_params|uWSGI設定|

test