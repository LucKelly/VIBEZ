class CreateUserSubvibes < ActiveRecord::Migration[7.1]
  def change
    create_table :user_subvibes do |t|
      t.references :subvibe, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
