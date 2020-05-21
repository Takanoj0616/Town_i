class AddComentToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :coment, :text
  end
end
