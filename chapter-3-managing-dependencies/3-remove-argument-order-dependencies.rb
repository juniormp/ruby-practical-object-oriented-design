class Gear
	attr_reader :chainring, :cog, :rim, :tire 
	def initialize(chainring, cog, rim, tire)
        @chainring = chainring
        @cog       = cog
        @rim       = rim
        @tire      = tire
	end

	def gear_inches
		ratio * wheel.diameter
	end
	
	def wheel
		@wheel ||= Wheel.new(rim, tire)
	end
end


class Gear
	attr_reader :chainring, :cog, :wheel def initialize(args)
        @chainring = args[:chainring]
        @cog       = args[:cog]
        @wheel     = args[:wheel]
	end
end

Gear.new(
	:chainring => 52,
	:cog => 11,
	:wheel => Wheel.new(26, 1.5)).gear_inches

# Dependency management is core to creating future-proof applications. Injecting dependencies creates loosely coupled objects that can be reused in novel ways. Isolating dependencies allows objects to quickly adapt to unexpected changes. Depending on abstractions decreases the likelihood of facing these changes.
# The key to managing dependencies is to control their direction. The road to maintenance nirvana is paved with classes that depend on things that change less often than they do.