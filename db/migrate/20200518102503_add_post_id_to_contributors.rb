class AddPostIdToContributors < ActiveRecord::Migration[5.2]
  def change
    add_column :contributors, :post_id, :integer
  end
end
