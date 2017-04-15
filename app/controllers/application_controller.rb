class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Basic認証
  # http_basic_authenticate_with name: 'username', password: 'password'

  # Basic認証（環境変数からname,passwordを読み取る場合）
  # 環境変数設定
  # $ export BASE_AUTH_NAME=username
  # $ export BASE_AUTH_PASS=password
  # http_basic_authenticate_with name: ENV["BASE_AUTH_NAME"], password: ENV["BASE_AUTH_PASS"]

end
