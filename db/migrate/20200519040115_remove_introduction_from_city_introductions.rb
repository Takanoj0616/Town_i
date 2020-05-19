class RemoveIntroductionFromCityIntroductions < ActiveRecord::Migration[5.2]
  def change
    remove_column :city_introductions, :introducntion, :string
  end
end
