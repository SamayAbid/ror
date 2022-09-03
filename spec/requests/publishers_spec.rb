require 'rails_helper'

RSpec.describe "Publishers", type: :request do

  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"


    describe "POST /create" do
      it "returns http success" do
        post "/publishers", params: {email: "bilal.ghous@gmail.com", phone_no: "123345567", address: "asdsada"}
        expect(response).to have_http_status(:success)
      end
    end



    describe "PUT /update" do
      it "returns http success" do
        put "/publishers", params: {email: "bilal.ghous@gmail.com", phone_no: "123345567", address: "house23213"}
      end
    end



    # describe "PATCH /update" do
    #   it "returns http success" do
    #     patch "/publishers", params: {email: "bilal.ghous@gmail.com", phone_no: "123345567", address: "house 334123"}
    #   end
    # end

    

  end
end
