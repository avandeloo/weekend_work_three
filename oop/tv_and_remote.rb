# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel

  def initialize
    @power = false
    @volume = 0
    @channel = 0
  end
end

class Remote
  attr_accessor :tv
  
  def initialize(television)
    @tv = television
  end
     
  def toggle_power
    !@tv.power
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1 if @tv.volume >= 1
  end

  def set_channel(integer)
    @tv.channel = integer
  end

end

puts "TESTING the Tv class..."
puts

television = Tv.new

if television.class == Tv
  puts "PASS!"
else
  puts "F"
end

puts

puts "TESTING the Remote class..."
puts

remote = Remote.new(television)

if remote.class == Remote
  puts "PASS!"
else
  puts "F"
end

puts

puts "Testing room_number..."
puts

remote.toggle_power

if television.power == true
  puts "PASS!"
else
  puts "F"
end

puts

puts "Testing increment_volume..."
puts

remote.increment_volume

if television.volume == 1
  puts "PASS!"
else
  puts "F"
end

puts

puts "Testing decrement_volume..."
puts

remote.decrement_volume

if television.volume == 0
  puts "PASS!"
else
  puts "F"
end

puts

puts "Testing set_channel..."
puts

remote.set_channel(34)

if television.channel == 34
  puts "PASS!"
else
  puts "F"
end

