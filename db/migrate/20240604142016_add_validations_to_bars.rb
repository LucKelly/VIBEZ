class AddValidationsToBars < ActiveRecord::Migration[7.1]
  def change
    change_column :bars, :name, :string, null: false
  end
end
