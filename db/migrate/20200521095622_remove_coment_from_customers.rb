class RemoveComentFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :coment, :text
  end
end
