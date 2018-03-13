class User < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Uploader
  # @implemented
  mount_uploader :avatar, FileUploader

  # Table
  # @implemented
  self.table_name = 'users'
  self.primary_key = 'id'

  # Relationships
  # @implemented
  has_many :categories, dependent: :destroy
  has_many :projects,   dependent: :destroy
  has_many :movies,     dependent: :destroy
  has_many :posts,      dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
