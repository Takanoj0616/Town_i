class AddFolloweredIdToContributors < ActiveRecord::Migration[5.2]
  def change
    add_column :contributors, :followered_id, :integer
  end
end
