class RemovePlantSpaceIdFromPlants < ActiveRecord::Migration[6.1]
  def change
    remove_column :plants, :plant_space_id, :integer
  end
end
