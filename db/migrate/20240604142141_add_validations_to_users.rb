class AddValidationsToUsers < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :username, :string, null: false
  end
end
