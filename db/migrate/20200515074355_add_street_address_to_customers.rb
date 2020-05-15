class AddStreetAddressToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :street_address, :string
  end
end
