class AddUserIdToSellers < ActiveRecord::Migration[5.0]
  def change
    add_column :sellers, :user_id, :integer
  end
end
