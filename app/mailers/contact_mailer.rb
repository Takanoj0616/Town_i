class ContactMailer < ApplicationMailer
	 def contact_mail(contact)
    @contact = contact
    mail to:"takanoj19920616@gmail.com",subject: "confirmation"
  end
end
