#!/usr/bin/env ruby

gem "minitest"

require "minitest/autorun"
require 'minitest/pride'

require_relative "binarysearchtree"

class TestBinarySearchTree < Minitest::Test

    def test_add

    	bst = BinarySearchTree.new()
    	bst.add(2)
    	bst.add(4)
    	bst.add(1)
    	assert_equal 2, bst.root.value
    	assert_equal 4, bst.root.right.value
    	assert_equal 1, bst.root.left.value
    end

    def test_depth_first_search

    	bst = BinarySearchTree.new()
    	assert_equal -1, bst.depth_first_search(891728712837)

    	bst.add(2)
    	bst.add(4)
    	bst.add(1)
        bst.add(6)
    	
    	assert_equal 2, bst.depth_first_search(2)
    	assert_equal 4, bst.depth_first_search(4)
    	assert_equal 1, bst.depth_first_search(1)
    end

end