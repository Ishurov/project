class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.integer :index_of_author, null: false, unique: true
      t.string :first_name, null: false
      t.string :second_name
      t.string :last_name, null: false

      t.timestamps null: false
    end
  end
end
