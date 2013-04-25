class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings, :id => false do |t|
      t.string :booking_id, :primary_key => true
      t.string :room_id
      t.date :start_date
      t.date :end_date
      t.integer :no_of_guest

      t.timestamps
    end
  end
end
