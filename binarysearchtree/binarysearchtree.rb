#!/usr/bin/env ruby

require_relative "node"

class BinarySearchTree

	attr_accessor :root

	# Add the value to the bst
	def add(value)

		if @root.nil?
			@root = Node.new(value)
		else
			if value < @root.value
				puts "Set left to #{value}"
				@root.left = Node.new(value)
			elsif value > @root.value
				puts "Set right to #{value}"
				@root.right = Node.new(value)
			end
		end
	end

	# Search the bst for a node with a given value
	def depth_first_search(value)

		if @root.nil?
			puts "Nothing in the tree"
			return -1
		end

		v = search_node(@root, value)
		if v.eql? -1
			puts "Could not find #{v}"
			return -1
		else
			puts "Found value: #{v}"
			return v
		end
	end

	# Search a node
	def search_node(node, value)

		if node.value.eql? value
			return value
		end

		if value < node.value
			if node.left.nil?
				return -1
			else
				return search_node(node.left, value) 
			end
		elsif value > node.value
			if node.right.nil?
				return -1
			else
				return search_node(node.right, value)
			end
		end
	end

	def breadth_display

		
	end

end