class RemoveBodyFromCityIntroductions < ActiveRecord::Migration[5.2]
  def change
    remove_column :city_introductions, :body, :string
  end
end
