#migration file
class AddPodcastIdToChannel < ActiveRecord::Migration[5.0]
  def change
    add_column :channels, :podcast_id, :integer
  end
end
