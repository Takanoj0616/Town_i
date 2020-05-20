class AddContributorToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :contributor_id, :intege
  end
end
