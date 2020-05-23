class RemoveTitleFromCityIntroductions < ActiveRecord::Migration[5.2]
  def change
    remove_column :city_introductions, :title, :string
  end
end
