class DropUserHousesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :user_houses
  end
end
