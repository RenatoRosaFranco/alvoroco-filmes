class Newsletter < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged

	# Table 
	# @implemented
	self.table_name = 'newsletters'
	self.primary_key = 'id'

	# Filters
	# @implemented
	before_create :signup, if: :valid?

	# Methods
	# @implmented
	def signup 
	  self.status = true 
	  self.token = SecureRandom.urlsafe_base64
	end

	def cancel
	  self.status = false 
	  self.token = nil
	end

	# Validates
	# @implemented
	validates :name,
			  presence: true,
			  uniqueness: false,
			  length: { minimum: 3, maximum: 30 }
    
    validates :email,
    		  presence: true,
    		  uniqueness: true,
    		  allow_blank: false,
    		  length: { minimum: 3, maximum: 245 }

    validates :token,
    		  uniqueness: true
end
