class ContactMailer < ActionMailer::Base
  

  def ask_email(contact)
    @contact = contact
    @url  = "http://example.com/login"
    mail(:from => "guilbertfrancois@gmail.com",
         :to => contact.email,
         :subject => "Welcome to My Awesome Site")
  end

end