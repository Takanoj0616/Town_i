class AddImageIdToCityIntroductions < ActiveRecord::Migration[5.2]
  def change
    add_column :city_introductions, :image_id, :string
  end
end
