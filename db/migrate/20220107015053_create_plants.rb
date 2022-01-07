class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :sunlight_req
      t.string :temp_req
      t.string :humidity_req
      t.integer :plant_space_id

      t.timestamps
    end
  end
end
