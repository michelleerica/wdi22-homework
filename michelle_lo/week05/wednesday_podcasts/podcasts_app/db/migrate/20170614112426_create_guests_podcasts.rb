class CreateGuestsPodcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :guests_podcasts do |t|
      t.integer :host_id
      t.integer :podcast_id
    end
  end
end
