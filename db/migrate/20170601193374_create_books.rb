class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :name, null: false
      t.integer :part
      t.integer :isbn, null: false
      t.integer :publishing_year, null: false
      t.references :stillage, index: true, foreign_key: true, null: false
      t.integer :copies, null: false
      t.integer :shelf, null: false
      t.index :isbn, unique: true

      t.timestamps null: false
    end
  end
end
