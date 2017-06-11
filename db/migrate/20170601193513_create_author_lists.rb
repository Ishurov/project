class CreateAuthorLists < ActiveRecord::Migration
  def change
    create_table :author_lists do |t|
      t.references :author, index: true, foreign_key: true, null: false
      t.references :book, index: true, foreign_key: true 
      t.index [:author_id, :book_id], unique: true
      
      t.timestamps null: false
    end
  end
end
