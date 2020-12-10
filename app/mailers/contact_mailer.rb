class ContactMailer < ApplicationMailer
  default :to => "sakshikumariy@gmail.com",
          :from => "notify.u.noreply@gmail.com"

  def contact_email(contact)
    @contact = contact
    mail(:subject => "Contact form has been submitted")
  end
end
