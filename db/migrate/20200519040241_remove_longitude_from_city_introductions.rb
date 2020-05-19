class RemoveLongitudeFromCityIntroductions < ActiveRecord::Migration[5.2]
  def change
    remove_column :city_introductions, :longitude, :float
  end
end
