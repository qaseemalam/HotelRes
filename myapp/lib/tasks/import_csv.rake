require 'csv'

desc "Import data from csv file to system"

task :import_csv => :environment do

	CSV.foreach("#{Rails.root}/public/homestay/hosts-2000.csv", :headers => true) do |data|
		Host.where(host_id: data[0]).first_or_create do |ht|
		ht.name = data[1]
		ht.address = data[2]
		end
   end
   
    CSV.foreach("#{Rails.root}/public/homestay/rooms-2000.csv", :headers => true) do |data|
		Room.where(room_id: data[0]).first_or_create do |ht|
		ht.host_id = data[1]
		ht.capacity = data[2]
		end
   end
   
   CSV.foreach("#{Rails.root}/public/homestay/bookings-2000.csv", :headers => true) do |data|
		Booking.where(booking_id: data[0]).first_or_create do |ht|
		ht.room_id = data[1]
		ht.start_date = data[2]
		ht.end_date = data[3]
		ht.no_of_guest = data[4]
		end
   end
   
end   
