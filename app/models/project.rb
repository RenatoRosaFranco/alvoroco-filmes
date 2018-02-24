class Project < ApplicationRecord
  self.table_name = 'projects'
  self.primary_key = 'id'
  
  belongs_to :user
end
