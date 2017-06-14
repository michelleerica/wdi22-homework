class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.string :popularity
      t.string :accessibility
      t.string :string

      t.timestamps
    end
  end
end
