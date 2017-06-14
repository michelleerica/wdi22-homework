class AddItgirlIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :itgirl_id, :integer
  end
end
