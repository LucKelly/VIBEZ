class RemoveFavouritesTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :favourites
  end
end
