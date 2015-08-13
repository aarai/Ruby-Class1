#hashes

name = "Aarai"
name << "Myers"

myHash = {:jan => "January", :feb => "February"}

myHash[:mar] = "March"

puts myHash[:jan]

myHash.each { |key,val|	puts "#{key} and #{val}"}

# Create a few programs using arrays and hashes 
# but make sure to use methods we have not discussed