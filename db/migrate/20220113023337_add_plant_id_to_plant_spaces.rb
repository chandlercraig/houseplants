class AddPlantIdToPlantSpaces < ActiveRecord::Migration[6.1]
  def change
    add_column :plant_spaces, :plant_id, :integer
  end
end
