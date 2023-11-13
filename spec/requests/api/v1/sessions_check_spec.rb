require "rails_helper"

RSpec.describe "Auth::Sessions", type: :request do
  describe "POST api/auth/sessions" do
    subject { post(_auth_sessions_path) }

    it "正常にレスポンスが返る" do
      subject
      res = JSON.parse(response.body)
      expect(res["message"]).to eq "Success Health Check!"
      expect(response).to have_http_status(:success)
    end
  end
end
