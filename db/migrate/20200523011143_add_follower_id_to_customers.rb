class AddFollowerIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :follower_id, :integer
  end
end
