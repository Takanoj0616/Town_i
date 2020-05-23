class AddFolloweredIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :followered_id, :integer
  end
end
