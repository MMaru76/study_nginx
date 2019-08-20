# Nginx Study

## 検証環境

- OS
  - CentOS-7-x86_64-Minimal-1810.iso
- Nginx
  - 1.17.3

## 基本的なコマンド

```
nginx を起動させる方法は色々ですが､パスが通っていたりしないと実行する事はできません｡

# /usr/sbin/nginx
または､
# nginx
```

```
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

## 設定ファイルの場所

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
