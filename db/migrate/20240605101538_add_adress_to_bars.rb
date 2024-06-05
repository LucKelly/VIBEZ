class AddAdressToBars < ActiveRecord::Migration[7.1]
  def change
    add_column :bars, :address, :string, null: false
  end
end
