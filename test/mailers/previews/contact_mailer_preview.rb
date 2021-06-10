# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/send_contact
  def send_contact
    from = "neroalex93@gmail.com"
    subject = 'Site Feedback'
    message = 'thank you'
    ContactMailer.send_contact(from,subject,message)
  end

end
