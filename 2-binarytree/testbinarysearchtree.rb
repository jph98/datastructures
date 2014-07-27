#!/usr/bin/env ruby

gem "minitest"

require "minitest/autorun"
require 'minitest/pride'

require_relative "binarysearchtree"

class TestBinarySearchTree < Minitest::Test

    def test_add

    	bst = BinarySearchTree.new()
    	bst.add(2)
        assert_equal 2, bst.root.value
    	bst.add(4)
        assert_equal 4, bst.root.right.value
    	bst.add(1)
        assert_equal 1, bst.root.left.value
        bst.add(7)    
        assert_equal 7, bst.root.right.right.value
    end

end