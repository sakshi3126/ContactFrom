require 'rails_helper'

RSpec.describe Contact, type: :model do

  it "is not valid without a first_name" do
    contact = Contact.new(first_name: nil)
    expect(contact).to_not be_valid
  end

  subject {
    described_class.new(first_name: "Anything",
                        last_name: "Lorem ipsum",
                        email: "sakshi@gmail.com",
                        phone_number: 82684598,
                        message: "Lorem ipsum")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a phone number" do
    subject.phone_number = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a message" do
    subject.message = nil
    expect(subject).to_not be_valid
  end
  context 'before data fill' do
    it 'record cannot get inserted into database' do
      expect { Contact.create! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  # describe '#first_name' do
  #   it { is_expected.to validates(:first_name) }
  # end
end
