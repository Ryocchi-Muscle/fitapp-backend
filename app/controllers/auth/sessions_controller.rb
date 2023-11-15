# ログイン時のユーザーを取得するための API コントローラー
class Auth::SessionsController < ApplicationController
  # binding.pry

  def index
    if current_user
      render json: { is_login: true, data: current_user }
    else
      render json: { is_login: false, message: "ユーザーが存在しません" }
    end
  end
end