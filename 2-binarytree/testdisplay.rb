#!/usr/bin/env ruby

gem "minitest"

require "minitest/autorun"
require 'minitest/pride'

require_relative "binarysearchtree"

class TestDisplay < Minitest::Test

    def test_depth_first_search

        puts "\n\n- DEPTH FIRST - "

        bst = BinarySearchTree.new()

        #   5(R)
        #  3 
        # 2 4
        bst.add(5)
        bst.add(3)
        bst.add(2)
        bst.add(4)

        visited = bst.depth_first_traversal()

        visited.each do |n|
            puts "node #{n}"
        end

        # Because we're using a stack, we'll get these in reverse order
        assert_equal 4, visited.pop().value
        assert_equal 2, visited.pop().value
        assert_equal 3, visited.pop().value
        assert_equal 5, visited.pop().value
        
        
        

    end

    def test_breadth_first_search

    	bst = BinarySearchTree.new()

        #  5(R)
        # 4 6
        #    7
        #     8
        #      9
    	bst.add(5)
        bst.add(4)
        bst.add(6)
        bst.add(7)
        bst.add(8)
        bst.add(9)

        puts "\n\n- BREADTH FIRST - "
        display = bst.breadth_first_traversal()
    	puts display
        assert_equal 5, bst.depth

        nodes = display.split("\n")
        assert_equal 5, nodes.length
        assert_equal "[1]: 5", nodes[0]
        assert_equal "[2]: 6 [2]: 4" , nodes[1]
        assert_equal "[3]: 7", nodes[2]
        assert_equal "[4]: 8", nodes[3]
        assert_equal "[5]: 9", nodes[4]


    end
end