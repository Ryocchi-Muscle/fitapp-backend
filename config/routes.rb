Rails.application.routes.draw do
  # ログイン機能のルーティング
  mount_devise_token_auth_for "User", at: "auth", controllers: {
    registrations: "auth/registrations",
  }
  # ログインユーザー取得のルーティング
  namespace :auth do
    resources :sessions, only: [:index]
  end

  # ゲストログイン機能
  devise_scope :user do
    post "auth/guest_sign_in", to: "auth/guest_sessions#guest_sign_in"
  end
end
