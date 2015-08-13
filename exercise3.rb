=begin
# Create a program that asks a user for 3 names
# add those three names to an array: .push(name)
# bonus: combine the 3 names from the array
  and print out to screen: .join(" ")
=end 

names = ["rai", "test","names"]

=begin
while names.length < 3
	puts "Please enter a name"
	name = gets.chomp
	names.push(name)
end
=end
names = ["rai", "test","fred"]

puts names.include?("bill")
puts names.empty?

#puts names.join(" ")
names.each do |var|
	if var == "rai"
		puts var
	else
		puts "everyone else"
	end
end

# names.each { |name|  puts name }

# puts names[0]
