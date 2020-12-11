require "rails_helper"

RSpec.describe "routes for Contacts", :type => :routing do
  it "routes /contacts to the contacts controller" do
    expect(get("/")).
      to route_to("contacts#contact")
  end
  #route spec for a route that doesn't exist (fails)
  it "routes /foo to the /foo action" do
    expect(get("/contacts/foo")).to route_to("contacts#foo")
  end
end
