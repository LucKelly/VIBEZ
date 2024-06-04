class CreateSubvibes < ActiveRecord::Migration[7.1]
  def change
    create_table :subvibes do |t|
      t.string :name
      t.string :main_vibe

      t.timestamps
    end
  end
end
