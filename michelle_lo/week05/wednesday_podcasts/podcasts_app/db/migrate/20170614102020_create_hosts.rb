class CreateHosts < ActiveRecord::Migration[5.0]
  def change
    create_table :hosts do |t|
      t.text :name
      t.integer :podcast_id

      t.timestamps
    end
  end
end
