class SendMailMailer < ApplicationMailer

  def contact(person)
    mail(to: person, subject:'Comfirmation de paiement')
  end

end
