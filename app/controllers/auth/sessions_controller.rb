#ログイン時のユーザーを取得するための API コントローラー
class Auth::SessionsController < DeviseTokenAuth::SessionsController
  def index
    if current_user
      render json: { is_login: true, data: current_user }
    else
      render json: { is_login: false, message: "ユーザーが存在しません" }
    end
  end

  

  def guest_sign_in
    # ゲストユーザーでログイン
    # binding.pry
    @resource = User.guest # ①ゲストユーザー情報を取得
    @token = @resource.create_token # ②ゲストユーザーの認証情報を作成
    @resource.save! # ③認証情報を保存
    render_create_success # ④認証情報を持つゲストログインユーザー情報を返す
  end
end
