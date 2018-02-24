class Contact < Object
	include ActiveModel::Validations
	include ActiveModel::Conversion

	attr_accessor :name, :phone, :email, :message 

	def initialize(params: {})
		@name = params[:name]
		@phone = params[:phone]
		@email = params[:email]
		@message = params[:message]
	end

	def persisted?
		false
	end
end