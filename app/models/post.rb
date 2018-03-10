class Post < ApplicationRecord
	extend FriendlyId 
	friendly_id :title, use: :slugged 

	# Table 
	# @implemented
	self.table_name = 'posts'
	self.primary_key = 'id'

    # Relationships
    # @implemented
    belongs_to :user

    # Scopes 
    #  @implemented
    scope :recents, -> { order(created_at: :desc) }
    scope :published, -> { where(published: true) }

    # Validations
    # @implemented
    validates :title,
    		  presence: true,
    		  uniqueness: false,
    		  allow_blank: false,
    		  length: { minimum: 3, maximum: 30 }

    validates :description,
    		  presence: true,
    		  uniqueness: false,
    		  allow_blank: false,
    		  length: { minimum: 3, maximum: 145 }

    validates :content,
    		  presence: true,
    		  uniquness: false,
    		  allow_blank: false,
    		  length: { minimum: 15, maximum: 10_000 }

    validates :tags,
    		  presence: true,
    		  uniqueness: false,
    		  allow_blank: false,
    		  length: { minimum: 3, maximum: 30 }

    validates :user_id,
    		  presence: true,
    		  uniqueness: false,
    		  allow_blank: false
end
