class ContactMailer < ApplicationMailer

  default from: 'no-reply@alvoroco.com.br'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sended.subject
  #
  def sended(contact)
    @contact = contact
    mail({
      to: contact.email,
      subject: "#{contact.name}, Recebemos seu e-mail com sucesso."
    })
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.received.subject
  #
  def received(contact)
    @contact = contact
    mail({
      to: 'contato@alvoroco.com.br',
      subject: "Novo e-mail enviado para alvoroço de #{contact.name}"
    })
  end
end
