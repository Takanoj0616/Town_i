class AddTownNameToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :town_name, :text
  end
end
