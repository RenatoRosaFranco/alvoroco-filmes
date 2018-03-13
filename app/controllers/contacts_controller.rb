class ContactsController < ApplicationController
  
  def create
  	contact = Contact.new(contact_params)
  	if contact.valid? 
  	  contact.sendEmail
  	  respond_with :root, notice: 'Mensagem enviada com sucesso.'
  	else
  	  respond_with :root, notice: 'Falha ao enviar a mensagem.'
  	end	
  end

  private
  	def contact_params
  		params.require(:contact).permit(:name, :phone, :email, :message, :captcha)
  	end
end