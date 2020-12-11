class ContactMailer < ApplicationMailer
  default :to => "info@ajackus.com",
          :from => "notify.u.noreply@gmail.com"

  def contact_email(contact)
    @contact = contact
    mail(:subject => I18n.t('contact_mailer.contact_email.subject'))
  end
end
