class AddCustomerIdToCityIntroductions < ActiveRecord::Migration[5.2]
  def change
    add_column :city_introductions, :customer_id, :integer
  end
end
