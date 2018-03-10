class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  # Table 
  # @implemented
  self.table_name = 'projects'
  self.primary_key = 'id'
  
  # Relationships 
  # @implemented
  belongs_to :user

  # Validates
  # @implemented
  validates :name,
  			presence: true,
  			uniqueness: false,
  			allow_blank: false,
  			length: { minimum: 3, maximum: 30 }

  validates :description,
  			presence: true,
  			uniqueness: false,
  			allow_blank: false,
  			length: { minimum: 3, maximum: 1_000 }

  validates :tags,
  			presence: true,
  			uniqueness: false,
  			allow_blank: false,
  			length: { minimum: 3, maximum: 75 }

  validates :user_id,
  			presence: true,
  			uniqueness: false,
  			allow_blank: false,
  			numericality: { only_integer: true }
end
