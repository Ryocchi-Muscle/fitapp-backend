class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable  #confirmable追加
  include DeviseTokenAuth::Concerns::User

  # ゲストユーザーが存在しない場合、ゲストユーザーを作成
  def self.guest
    find_or_create_by!(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      user.confirmed_at = Time.now #user.rbでconfirmableを使用しているため、これが必要
    end
  end
end
