#!/usr/bin/env ruby

require_relative "node"

class BinarySearchTree

	attr_accessor :root, :depth

	NEWLINE_NODE = "\n"

	def initialize
		@depth = 0
	end

	# Add the value to the bst
	def add(value)

		puts "root: #{@root} value: #{value}"
		if @root.nil?
			@root = Node.new(value)
			@depth += 1
		else
			add_node_value(@root, value)
		end
	end

	def add_node_value(node, value)

		# Just to handle the depth of the tree

		if node.nil?
			return Node.new(value)
			puts "nil, set node to: #{node}"
		else

			if node.left.nil? and node.right.nil?
				@depth += 1
			end

			if value < node.value
				puts "set left: #{value} for #{node.value}"
				# Have to set the result to node.left
				node.left = add_node_value(node.left, value)
			elsif value > node.value
				puts "set right: #{value} for #{node.value}"
				# Have to set the result to node.right
				node.right = add_node_value(node.right, value)
			end
		end

		# By default
		return node
	end

	# Search for a node
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

	# n.b. Traversal and Search are different

	# 1. There's three types of depth first search (which uses a stack)
	# - preorder
	# - inorder
	# - postorder
	# See - https://www.khanacademy.org/cs/depth-first-traversals-of-binary-trees/934024358
	def depth_first()

	end

	def display_nodes(display)
		return display
	end

	# 2. There's also a breadth first search (which uses a queue)
	def breadth_first()

		# Use a queue
		if @root.nil?
			puts "No tree"
			return []
		end

		puts "\n\n Structure \n\n"
		level = 1
		queue = Queue.new()
		queue << NodePair.new(@root, level)
		queue << NEWLINE_NODE

		# TODO: Display needs to be a array of text
		display = ""

		while !queue.empty?

			nodepair = queue.pop()

			if nodepair == NEWLINE_NODE
				display = display.rstrip
				display += NEWLINE_NODE

				# Make sure we push the newline back if queue not empty
				if !queue.empty?
					queue.push(NEWLINE_NODE)
				end

			else
				node = nodepair.node
				nodelevel = nodepair.level

				display += "[#{nodelevel}]: "			
				display += "#{node.value} "	

				# Process right first so tree displayed correctly
				if !node.right.nil? or !node.left.nil?
					level += 1
				end

				queue.push(NodePair.new(node.right, level)) if !node.right.nil?
				queue.push(NodePair.new(node.left, level)) if !node.left.nil?
				
			end

		end
		return display
	end

end

#!/usr/bin/env ruby

class NodePair

	attr_accessor :node, :level

	def initialize(node, level)
		@node = node
		@level = level
	end
end
