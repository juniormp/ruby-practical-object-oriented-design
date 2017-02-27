class Gear
	attr_reader :chainring, :cog, :rim, :tire 
	def initialize(chainring, cog, rim, tire)
		@chainring = chainring
		@cog
	    @rim
     	@tire
	end

 	def gear_inches
		ratio * Wheel.new(rim, tire).diameter
	end
end

Gear.new(52, 11, 26, 1.5).gear_inches



class Gear
	attr_reader :chainring, :cog, :wheel 
	def initialize(chainring, cog, wheel)
          @chainring = chainring
          @cog       = cog
          @wheel     = wheel
	end
	
	def gear_inches
		ratio * wheel.diameter
	end

end

# Gear expects a ‘Duck’ that knows ‘diameter’
Gear.new(52, 11, Wheel.new(26, 1.5)).gear_inches



# Using dependency injection to shape code relies on your ability to recognize that the responsibility for knowing the name of a class and the responsibility for knowing the name of a message to send to that class may belong in different objects. Just because Gear needs to send diameter somewhere does not mean that Gear should know about Wheel