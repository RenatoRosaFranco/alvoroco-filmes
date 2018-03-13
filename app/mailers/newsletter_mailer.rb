class NewsletterMailer < ApplicationMailer

  default from: 'newsletter@alvoroco.com.br'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.signup.subject
  #
  def signup(contact)
    @contact = contact
    mail({
      to: @contact.email,
      subject: "#{contact.name}, você se inscreveu em nossa newsletter com sucesso."
    })
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.cancel.subject
  #
  def cancel(contact)
    @contact = contact
    mail({
      to: @contact.email,
      subject: "#{contact.name}, Já vai? que pena. é sempre bom te-lo conosco."
    })
  end
end
