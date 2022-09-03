require 'rails_helper'

RSpec.describe "Articles", type: :request do
  
  byebug
  #sign_in @user

  test "/publishers/sign_in" do
    sign_in User.create(:email => "#{rand(50000)}@example.com")
    get root_url
    assert_response :success
  end

  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"


      describe "POST /create" do
        it "returns http success" do

          post "/articles", params:{title: "", description:"this is new article."}
          article = Article.last
          byebug
          expect(response).to render_template(:new)
        end
      end    
    
    
  end
end
