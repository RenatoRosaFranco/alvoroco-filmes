class AddColumnSlugToNewsletters < ActiveRecord::Migration[5.1]
  def change
    add_column :newsletters, :slug, :string
  end
end
