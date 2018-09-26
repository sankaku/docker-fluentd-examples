# nginx2mysql
nginxのアクセスログをMySQLに入れる。

+ 入力  
  nginxのアクセスログ
+ 出力  
  MySQLのテーブル

## 準備

```sh
docker-compose build
docker-compose up
```

## データ収集
### 入力

`http://localhost` にブラウザでアクセスする。

### 出力確認

```sh
docker exec -it docker-fluentd-examples-nginx2mysql-mysql-container bash
```

でMySQLコンテナに入り

```sh
mysql -u root -p
```

でrootパスワード(mypassword)を入力する。

```sql
select * from mydb.logs;
```

でデータが見れる。