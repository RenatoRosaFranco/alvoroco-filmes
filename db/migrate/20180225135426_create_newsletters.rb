class CreateNewsletters < ActiveRecord::Migration[5.1]
  def change
    create_table :newsletters do |t|
      t.string :name
      t.string :email
      t.boolean :status
      t.string :token

      t.timestamps
    end
  end
end
