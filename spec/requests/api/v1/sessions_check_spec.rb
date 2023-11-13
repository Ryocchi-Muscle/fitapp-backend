require "rails_helper"

RSpec.describe "Auth::Sessions", type: :request do
  describe "GET auth/sessions" do
    subject { get(_auth_sessions_path) }

    it "正常にレスポンスが返る" do
      subject
      res = JSON.parse(response.body)
      expect(res["is_login"]).to eq "Success Health Check!"
      expect(res["data"]).to eq "current_user"
      expect(response).to have_http_status(:success)
    end
  end
end
