# ゲストユーザーでログイン
class Auth::GuestSessionsController < DeviseTokenAuth::SessionsController
  def guest_sign_in
    @resource = User.guest # ①ゲストユーザー情報を取得
    @token = @resource.create_token # ②ゲストユーザーの認証情報を作成
    @resource.save! # ③認証情報を保存
    render_create_success # ④認証情報を持つゲストログインユーザー情報を返す
  end
end