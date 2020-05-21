class RemoveTownNameFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :town_name, :text
  end
end
