Rails.application.routes.draw do
  # ログイン機能のルーティング
  mount_devise_token_auth_for "User", at: "auth", controllers: {
            registrations: "auth/registrations",
          }
  # ログインユーザー取得のルーティング
  namespace :auth do
    resources :sessions, only: %i[index]
  end

  # ゲストログイン機能のルーティング
  devise_scope :user do
    post 'users/guest_sign_in', to: 'auth/sessions#guest_sign_in'
  end

    # トップページは homes#index を追加
  root "homes#index"

end
