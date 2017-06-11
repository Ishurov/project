class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.text :first_name, null: false
      t.text :second_name
      t.text :last_name, null: false
      t.integer :index, null: false
      t.index :index, unique: true
      t.timestamps null: false
    end
  end
end
