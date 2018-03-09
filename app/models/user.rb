class User < ApplicationRecord
  self.table_name = 'users'
  self.primary_key = 'id'

  # Relationships
  has_many :projects, dependent: :destroy
  has_many :movies, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
