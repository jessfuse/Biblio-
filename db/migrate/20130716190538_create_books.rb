class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.integer :ISBN
      t.string :picture

      t.timestamps
    end
  end
end
