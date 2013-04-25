class Room < ActiveRecord::Base
  set_primary_key :room_id
  attr_accessible :capacity, :host_id, :room_id
  
  belongs_to :Host
  has_many :Bookings
  
  def self.search(search1, search2, search3)
     
    if search3
     
	 Room.select(" hosts.host_id,hosts.name,hosts.address,rooms.room_id, rooms.capacity, bookings.no_of_guest, rooms.capacity-bookings.no_of_guest as available").
     joins("LEFT JOIN bookings ON rooms.room_id = bookings.room_id ", :Host).
     where (["bookings.start_date >= :sdate and bookings.end_date <= :edate", :sdate => search1, :edate => search2])
	 
	 
	 
	 	 
    else
    
    end
end
end