class AddCityIntroductionIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :city_introduction_id, :integer
  end
end
