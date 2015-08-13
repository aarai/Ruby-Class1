
require "pry"

#ranges
(1..10).each do |variable|
	binding.pry
	puts variable
end

names = ["bob","bill","jack"]

puts names.include?("bob")

ages = [40,72,44,32,21]

things = [true,"Bill",Object.new,Array.new(3)]

thing = Array.new(3)

=begin
# Create a program that asks a user for 3 names
# add those three names to an array: .push(name)
# bonus: combine the 3 names from the array
  and print out to screen: .join(" ")
=end 





