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

class User < ApplicationRecord
  # ゲストユーザーが存在しない場合、ゲストユーザーを作成
  def self.guest
    find_or_create_by!(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲストユーザー"
    end
  end
end
