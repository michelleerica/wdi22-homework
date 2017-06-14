class AddChannelIdToPodcast < ActiveRecord::Migration[5.0]
  def change
    add_column :podcasts, :channel_id, :integer
  end
end
