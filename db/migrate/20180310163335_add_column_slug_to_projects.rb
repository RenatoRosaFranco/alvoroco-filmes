class AddColumnSlugToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :slug, :string
  end
end
