class Stack

	def initialize
		@elements = []
		@top = nil
	end

	def push(item)
		@elements.push(item)
	end

	def pop()
		@elements.pop()
	end

	def list()
		elements.each do |i|
			print i
		end
	end
end