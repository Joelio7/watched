class AddUserToEpisodes < ActiveRecord::Migration[5.0]
  def change
    add_column :episodes, :user_id, :integer
    add_index :episodes, :user_id
  end
end
