class Contact < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :phone_number, format: { with: /\d[0-9]\)*\z/,
                                    message: "Only positive number without spaces are allowed" }
  validates_presence_of :message
end
