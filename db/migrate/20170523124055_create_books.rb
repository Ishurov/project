class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, null:false
      t.integer :volume
      t.integer :isbn, null:false, unique:true
      t.integer :year_of_publishing, null:false
      t.references :stack, index: true, foreign_key: true, null:false
      t.integer :number_of_copies, null:false
      t.integer :number_of_shelf
      t.index [:year_of_publishing, :volume, :isbn], unique:true

      t.timestamps null: false
    end
  end
end
