class CreateBarSubvibes < ActiveRecord::Migration[7.1]
  def change
    create_table :bar_subvibes do |t|
      t.references :subvibe, null: false, foreign_key: true
      t.references :bar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
