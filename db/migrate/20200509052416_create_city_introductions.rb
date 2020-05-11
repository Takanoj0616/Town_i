class CreateCityIntroductions < ActiveRecord::Migration[5.2]
  def change
    create_table :city_introductions do |t|
      t.string :introduction,null: false
        t.string :image,null: false
        t.string :address,null: false
        t.float :latittude,null: false
        t.float :longitude,null: false
        t.text :comment,null: false
        t.integer :user_id,null: false
        t.integer :post_image_id,null: false
        t.string :name,null: false
        t.datetime :start_time
        t.timestamps
    end
  end
end
