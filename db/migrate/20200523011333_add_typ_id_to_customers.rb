class AddTypIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :typ_id, :integer
  end
end
