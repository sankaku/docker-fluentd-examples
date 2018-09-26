# nginx2file
nginxのアクセスログをファイルに書き出す。

+ 入力  
  nginxのアクセスログ
+ 出力  
  ファイル

## 準備

```sh
docker-compose build
docker-compose up
```

## データ収集
### 入力

`http://localhost` にブラウザでアクセスする。

### 出力確認

`./fluentd/log/` 以下に入る。

```
2018-08-19T23:11:43+09:00       nginx.access    {"remote":"172.27.0.1","host":"-","user":"-","method":"GET","path":"/","code":"200","size":"612","referer":"-","agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","http_x_forwarded_for":"\"-\""}
2018-08-19T23:11:48+09:00       nginx.access    {"remote":"172.27.0.1","host":"-","user":"-","method":"GET","path":"/favicon.ico","code":"404","size":"571","referer":"http://localhost/","agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36","http_x_forwarded_for":"\"-\""}
```
