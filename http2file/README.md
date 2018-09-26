# http2file
httpリクエストをファイルに書き出す。

+ 入力  
  httpリクエスト(POSTメソッド)
+ 出力  
  ファイル

## 準備

```sh
docker-compose build
docker-compose up
```

## データ収集
### 入力

```sh
curl http://localhost:9880/http.test -X POST -d 'json={"foo": "bar"}'
```

### 出力確認

`./fluentd/log/` 以下に入る。

```
2018-08-19T18:51:26+09:00       http.test       {"foo":"bar"}
```
