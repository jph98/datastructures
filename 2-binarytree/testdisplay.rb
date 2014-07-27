#!/usr/bin/env ruby

gem "minitest"

require "minitest/autorun"
require 'minitest/pride'

require_relative "binarysearchtree"

class TestDisplay < Minitest::Test

    def test_add

    	bst = BinarySearchTree.new()

    	bst.add(5)
        bst.add(4)
        bst.add(6)
        bst.add(7)
        bst.add(8)
        bst.add(9)

        nodes = bst.breadth_first()
    	display = bst.display_nodes(nodes)
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