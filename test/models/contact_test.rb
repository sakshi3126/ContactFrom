require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "invalid if first name is nil" do
    contact = Contact.new(first_name: nil)
    assert_not contact.save
  end

  test "email validation should trigger" do
    article = Contact.new(first_name: 'first', last_name: 'last', phone_number: '9082684598', message: 'abc')
    assert_not article.save
  end
end
