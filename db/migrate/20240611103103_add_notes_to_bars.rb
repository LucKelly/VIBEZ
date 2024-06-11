class AddNotesToBars < ActiveRecord::Migration[7.1]
  def change
    add_column :bars, :notes, :text
  end
end
