# Preview all emails at http://localhost:3000/rails/mailers/send_mail_mailer
class SendMailMailerPreview < ActionMailer::Preview


  def contact
    SendMailMailer.contact('client')
  end
end
