require 'rails_helper'

RSpec.describe "get response from unmatched route", :type => :request do
  it "Return status 404 if entered url does not match" do
    get "/some_url_404"
    expect(response.status).to eq 404
  end

end
