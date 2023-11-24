Rails.application.routes.draw do
  # ログイン機能のルーティング
  mount_devise_token_auth_for "User", at: "auth", controllers: {
    registrations: "auth/registrations",
  }
  # ログインユーザー取得のルーティング
  namespace :auth do
    resources :sessions, only: %i[index]
  end

  # ゲストログイン機能
  devise_scope :user do
    post "auth/guest_sign_in", to: "auth/guest_sessions#guest_sign_in"
  end

  namespace :api do
    namespace :v1 do
      get "health_check", to: "health_check#index"
    end
  end
end
