class AddUserToHouses < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :user_id, :integer, foreign_key: true
  end
end
