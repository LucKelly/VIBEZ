class AddValidationsToSubvibes < ActiveRecord::Migration[7.1]
  def change
    change_column :subvibes, :name, :string, null: false
    change_column :subvibes, :main_vibe, :string, null: false
  end
end
