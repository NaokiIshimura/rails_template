# Railsアプリのテンプレート

## サーバ起動
- 基本
```
$ rails s
```

- ポート指定＆localhost外からもアクセスさせる場合
```
$ rails s -p 8080 -b 0.0.0.0
```

- デーモンとして起動させる場合
```
$ rails s -d
```

## Basic認証
/app/controller/applicationController.rb
```
# Basic認証
http_basic_authenticate_with name: 'username', password: 'password'
```

```
# Basic認証（環境変数からname,passwordを読み取る場合）
# 環境変数設定
# $ export BASE_AUTH_NAME=username
# $ export BASE_AUTH_PASS=password
http_basic_authenticate_with name: ENV["BASE_AUTH_NAME"], password: ENV["BASE_AUTH_PASS"]
```

## タイトル
- ベースタイトル
  /app/helpers/application_helper.rb
```
base_title = "Ruby on Rails Tutorial Sample App"
```

- ページタイトル
  app/views/static_pages/xxx.html.erb
```
<% provide(:title, 'xxx') %>
```

## コントローラ追加
```
$ rails generate controller StaticPages home help
```

# モデル追加
```
$ rails generate scaffold user name:string age:integer
$ rake db:migrate
```

## プリコンパイル
```
$ RAILS_ENV=production rake assets:precompile
```
