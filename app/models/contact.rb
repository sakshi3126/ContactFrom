class Contact < ApplicationRecord
  validates :first_name, presence: { message: I18n.translate('warning_message.field_is_required') }
  validates :last_name, presence: { message: I18n.translate('warning_message.field_is_required') }
  validates :email, presence: { message: I18n.translate('warning_message.field_is_required') }
  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :phone_number, format: { with: /\d[0-9]\)*\z/,
                                    message: I18n.translate('warning_message.phone_error') }
  validates :message, presence: { message: I18n.translate('warning_message.field_is_required') }

  def full_name
    [first_name, last_name].compact.join(' ').titleize if first_name.present?
  end

end
