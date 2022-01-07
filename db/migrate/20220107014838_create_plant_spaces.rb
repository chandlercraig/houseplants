class CreatePlantSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_spaces do |t|
      t.string :name
      t.integer :sunlight_rating
      t.string :temp
      t.string :humidity
      t.integer :house_id

      t.timestamps
    end
  end
end
