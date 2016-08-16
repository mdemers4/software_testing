
class Temerature

	def initialize(args)
		@f = f
		@c = c 
	end

	def to_celcius()
		temp_in_f = (@c *9)/5 +32
	end

	def to_fahrenheit()
		temp_in_c = (@f -32) * 5/9
	end
end 