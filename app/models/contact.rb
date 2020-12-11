class Contact < ApplicationRecord
  validates :first_name, presence:true
  validates_presence_of :last_name
  validates :email, presence: true
  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :phone_number, format: { with: /\d[0-9]\)*\z/,
                                    message: I18n.translate('warning_message.phone_error') }
  validates_presence_of :message

  def full_name
    [first_name, last_name].compact.join(' ').titleize if first_name.present?
  end

end
