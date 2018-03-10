class Movie < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Table
  # @implemented
  self.table_name = 'movies'
  self.primary_key = 'id'

  # Relationships
  # @implemented
  belongs_to :user

  # Validations
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

  validates :link,
  			presence: true,
  			uniqueness: false,
  			allow_blank: false,
  			length: { minimum: 3, maximum: 145 }

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
