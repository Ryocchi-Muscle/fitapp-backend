class ApplicationController < ActionController::API
        #SetUserByTokenという拡張機能を使える様になる→Cookie や CORS の設定ができるようになる
        include DeviseTokenAuth::Concerns::SetUserByToken
end
