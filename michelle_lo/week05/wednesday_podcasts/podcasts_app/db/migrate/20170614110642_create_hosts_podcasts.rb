class CreateHostsPodcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :hosts_podcasts do |t|
      t.integer :host_id
      t.integer :podcast_id
    end
  end
end
