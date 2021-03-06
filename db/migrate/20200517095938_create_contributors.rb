class CreateContributors < ActiveRecord::Migration[5.2]
  def change
    create_table :contributors do |t|
      t.integer :type_id, null: false
      t.string :name, null: false
      t.text :explanation, null: false
      t.string :image, null: false
      t.timestamps
    end
  end
end
