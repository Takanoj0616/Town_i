class RemoveUserIdFromCityIntroductions < ActiveRecord::Migration[5.2]
  def change
    remove_column :city_introductions, :user_id, :integer
  end
end
