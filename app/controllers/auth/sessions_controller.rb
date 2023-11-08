#sessions_controller.rbはログイン時のユーザーを取得するための API コントローラー
class Auth::SessionsController < ApplicationController
  def index
    if current_user
      render json: { is_login: true, data: current_user }
    else
      render json: { is_login: false, message: "ユーザーが存在しません" }
    end
  end
end

class Auth::SessionsController < Devise::SessionsController
  def guest_sign_in
    end_user = User.guest
    sign_in end_user
   render json: user
  end
end
