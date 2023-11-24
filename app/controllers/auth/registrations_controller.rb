# registrations_controller.rbはサインアップ、サインイン、サインアウトを実行する API コントローラー
# 要は、ログイン機能のコントローラー
# Auth::RegistrationsControllerクラスはDeviseTokenAuth::RegistrationsControllerを継承する
class Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  private

    def sign_up_params
      # サインアップ時に登録できるカラムを指定
      params.permit(:email, :password, :password_confirmation)
    end
end
