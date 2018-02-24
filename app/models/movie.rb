class Movie < ApplicationRecord
  self.table_name = 'movies'
  self.primary_key = 'id'

  belongs_to :user

end
