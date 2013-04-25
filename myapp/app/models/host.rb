class Host < ActiveRecord::Base
  attr_accessible :address, :host_id, :name
  set_primary_key :host_id
  has_many :Rooms
end
