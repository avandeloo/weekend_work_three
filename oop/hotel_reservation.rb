# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

puts "TESTING the HotelReservation class..."
puts

reservation = HotelReservation.new( 
                                    customer_name: "John Doe",
                                    date: "January 31, 2019",
                                    room_number: 205
                                  )

if reservation != nil
  puts "PASS!"
else
  puts "F"
end

puts

puts "Testing room_number..."
puts

reservation.room_number = 405

if reservation.room_number != "205"
  puts "PASS!"
else
  puts "F"
end

puts

puts "Testing add_a_fridge..."
puts

reservation.add_a_fridge

if reservation.amenities.include?("fridge")
  puts "PASS!"
else
  puts "F"
end

puts

puts "Testing add_a_crib..."
puts

reservation.add_a_crib

if reservation.amenities.include?("crib")
  puts "PASS!"
else
  puts "F"
end

puts

puts "Testing add_a_custom_amenity..."
puts

reservation.add_a_custom_amenity("table")

if reservation.amenities.include?("table")
  puts "PASS!"
else
  puts "F"
end



