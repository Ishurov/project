class CreateHalls < ActiveRecord::Migration
  def change
    create_table :halls do |t|
      t.text :full_name, null:false
      t.text :short_name, null:false
      t.index [:short_name, :full_name], unique:true

      t.timestamps null: false
    end
  end
end
