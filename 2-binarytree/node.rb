#!/usr/bin/env ruby

class Node

	attr_accessor :value, :left, :right

	def initialize(value)
		@value = value
	end

	def to_s
		return "#{@value}"
	end
end
