#!/usr/bin/env ruby

gem "minitest"

require "minitest/autorun"
require 'minitest/pride'

require_relative "stack"

class TestStack < Minitest::Test

    def test_add

        stack = Stack.new()
        stack.push(1)
        stack.push(4)

        assert_equal 4, stack.pop()
        assert_equal 1, stack.pop()

    end
end