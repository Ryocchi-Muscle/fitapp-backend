class ApplicationController < ActionController::API
  #SetUserByTokenという拡張機能を使える様になる→Cookie や CORS の設定ができるようになる
  include DeviseTokenAuth::Concerns::SetUserByToken

  #   def some_action
  #     @data = "Some data"
  #     redirect_to "https://google.com?account_confirmation_success=true", allow_other_host: true
  #   end

end
