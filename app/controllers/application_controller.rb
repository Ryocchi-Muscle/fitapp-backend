class ApplicationController < ActionController::API

  # SetUserByTokenという拡張機能を使える様になる→Cookie や CORS の設定ができるようになる
  # devise_token_authに定義されている様々なメソッドを使用できるようになる。
  include DeviseTokenAuth::Concerns::SetUserByToken

    # def show
    #   # リダイレクトを行う際にallow_other_host: trueを指定
    #   render "https://google.com?account_confirmation_success=false", allow_other_host: true
    # end

  # rescue_from ActionController::Redirecting::UnsafeRedirectError do
  #   redirect_to "https://google.com" , allow_other_host: true
  # end
end
