class RenameColumnInItems < ActiveRecord::Migration[5.0]
  def change

    rename_column :items, :type, :category
    rename_column :items, :popularity, :image

  end
end
