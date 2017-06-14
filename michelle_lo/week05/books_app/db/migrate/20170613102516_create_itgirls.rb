class CreateItgirls < ActiveRecord::Migration[5.0]
  def change
    create_table :itgirls do |t|
      t.string :name
      t.date :dob
      t.string :nationality
      t.string :period
      t.string :image

      t.timestamps
    end
  end
end
