class AddFollowerIdToContributors < ActiveRecord::Migration[5.2]
  def change
    add_column :contributors, :follower_id, :integer
  end
end
