# Railsアプリのテンプレート

## Preview
https://mighty-beyond-37933.herokuapp.com/

## デザインを変更する

### CSS
[Bootstrap](http://getbootstrap.com/)

### ホームページのイメージ
app/views/static_pages/home.html.erb

```css
  div.jumbotron {
    height: 400px;
    background: url(<%= asset_path "top.jpg" %>) no-repeat;
    background-position: 50% 50%;
    background-size: cover;
  }
```
  
### ヘッダー
app/assets/stylesheets/custom.scss

```css
header.navbar {
  background-color: black;
  border-bottom-color: black;
  opacity: 0.85;
}

a#logo{
  color:white;
}
```

## タイトルを変更する

###ベースタイトル
/app/helpers/application_helper.rb

```
base_title = "xxx"
```

###ページタイトル
app/views/static_pages/xxx.html.erb

```
<% provide(:title, 'xxx') %>
```

## Basic認証を追加する
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
