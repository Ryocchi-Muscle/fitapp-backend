class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable  #confirmable追加
  include DeviseTokenAuth::Concerns::User
end
