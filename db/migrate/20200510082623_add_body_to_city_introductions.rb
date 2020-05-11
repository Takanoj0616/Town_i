class AddBodyToCityIntroductions < ActiveRecord::Migration[5.2]
  def change
    add_column :city_introductions, :body, :text
  end
end
