#!/usr/bin/env ruby

gem "minitest"

require "minitest/autorun"
require 'minitest/pride'

require_relative "binarysearchtree"

class TestDisplay < Minitest::Test

    def test_add

    	bst = BinarySearchTree.new()
    	bst.breadth_display()
    end
end