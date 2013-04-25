class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms, :id => false do |t|
      t.string :room_id, :primary_key => true
      t.string :host_id
      t.integer :capacity

      t.timestamps
    end
  end
end
