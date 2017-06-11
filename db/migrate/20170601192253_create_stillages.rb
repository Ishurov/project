class CreateStillages < ActiveRecord::Migration
  def change
    create_table :stillages do |t|
      t.integer :index, null: false
      t.references :hall, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
