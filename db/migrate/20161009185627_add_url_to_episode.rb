class AddUrlToEpisode < ActiveRecord::Migration[5.0]
  def change
    add_column :episodes, :url, :string
  end
end
