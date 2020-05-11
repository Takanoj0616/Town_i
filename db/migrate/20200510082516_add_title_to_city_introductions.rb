class AddTitleToCityIntroductions < ActiveRecord::Migration[5.2]
  def change
    add_column :city_introductions, :title, :string
  end
end
