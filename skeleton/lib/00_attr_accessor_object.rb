class AttrAccessorObject
	def self.my_attr_accessor(*names)
		#iterate thru the names args
	names.each do |name|
		#we then define a method(aka new method) with the name
		define_method(name) do
			# we get the variable withthe instance_variable_get
			instance_variable_get("@#{name}")
		end

		#define a method that sets a variable
		#interpolation is key 
		define_method("#{name}=") do |value|
			# use instance variable set
			instance_variable_set("@#{name}", value)
		end
	end

	end
end

