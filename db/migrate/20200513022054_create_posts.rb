class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :town_name
      t.string :image_id
      t.text :comment
      t.integer :customer_id

      t.timestamps
    end
  end
end
