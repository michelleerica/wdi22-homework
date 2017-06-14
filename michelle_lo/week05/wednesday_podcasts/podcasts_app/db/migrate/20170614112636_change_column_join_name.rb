class ChangeColumnJoinName < ActiveRecord::Migration[5.0]
  def change
    rename_column :guests_podcasts, :host_id, :guest_id

  end
end
