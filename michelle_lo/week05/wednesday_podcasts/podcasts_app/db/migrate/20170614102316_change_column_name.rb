class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :hosts, :podcast_id, :channel_id

  end
end
