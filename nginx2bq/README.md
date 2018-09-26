# nginx2bq
nginxのアクセスログをBigQueryに入れる。

+ 入力  
  nginxのアクセスログ
+ 出力  
  BigQuery

## 準備
### BigQuery
+ サービスアカウントキーを作成し、認証JSONファイルを保存
+ BigQueryのデータセットを作る

### 設定ファイルの編集
+ 認証JSONファイル  
  1. このディレクトリ直下に `secret_key` ディレクトリを作成
  2. `secret_key` ディレクトリにGCPのサービスアカウントキーのJSONを入れる。
  3. [fluentd設定ファイル](./fluentd/my_fluentd.conf)の `JSON_KEY_FILE_NAME.json` を上で入れたファイル名で置き換え

+ BigQuery
  + [fluentd設定ファイル](./fluentd/my_fluentd.conf)の `PROJECT_NAME` をGCPプロジェクト名で置き換え
  + [fluentd設定ファイル](./fluentd/my_fluentd.conf)の `DATASET_NAME` をBigQueryのデータセット名で置き換え

### イメージ作成・コンテナ起動

```sh
docker-compose build
docker-compose up
```

## データ収集
### 入力

`http://localhost` にブラウザでアクセスする。

### 出力確認

BigQueryにアクセスし、データが入っていることを確認。
