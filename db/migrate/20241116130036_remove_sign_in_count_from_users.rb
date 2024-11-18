class RemoveSignInCountFromUsers < ActiveRecord::Migration[7.1]
    def change
      remove_column :users, :sign_in_count, :integer
    end
end
