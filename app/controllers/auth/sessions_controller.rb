#ログイン時のユーザーを取得するための API コントローラー
class Auth::SessionsController < ApplicationController
  def index
    if current_user
      render json: { is_login: true, data: current_user }
    else
      render json: { is_login: false, message: "ユーザーが存在しません" }
    end
  end

  # def guest_sign_in
  #   user = User.guest
  #     user.password = SecureRandom.urlsafe_base64
  #     user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
  #   end
  #   sign_in user
  #   flash[:notice] = "ゲストユーザーとしてログインしました。"
  #   redirect_to root_path
  # end
end

# class Auth::SessionsController < DeviseTokenAuth::SessionsController
#   def guest_sign_in
#     @resource = User.guest          #ゲストユーザーを取得
#     @token = @resource.create_token  #認証情報作成
#     @resource.save!                  #認証情報保続
#     render_create_success           #認証情報を持つゲストログインユーザー情報を返す
#   end
# end
