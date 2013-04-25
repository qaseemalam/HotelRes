class Booking < ActiveRecord::Base
set_primary_key :booking_ref
  attr_accessible :booking_id, :end_date, :no_of_guest, :room_id, :start_date
  belongs_to :Room
  
  def self.search(search1, search2, search3)
    if search1
	 Booking.where("start_date >=  ? and end_date <= ?", search1, search2).all
	 
    else
     find(:all)
    end
end
end


