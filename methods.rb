# Methods
Object.new {}
String.new
Array.new

class People < Object

	def add_name names,name 
		names.push(name)	
	end

end



names = []

def add_name names,name 
	names.push(name)	
end

add_name names,"Aarai" 

puts names[0]
