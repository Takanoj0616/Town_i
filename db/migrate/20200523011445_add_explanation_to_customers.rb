class AddExplanationToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :explanation, :text
  end
end
