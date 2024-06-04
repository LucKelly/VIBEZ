class AddValidationsToBars < ActiveRecord::Migration[7.1]
  def change
    change_column :bars, :name, :string, null: false
    change_column :bars, :latitude, :float, null: false
    change_column :bars, :longitude, :float, null: false
  end
end
