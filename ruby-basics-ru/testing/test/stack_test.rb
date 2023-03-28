# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_push!
    stack = Stack.new %w[foo bar]
    stack.push! 'some'
    stack.push! 'element'

    assert { stack.to_a == %w[foo bar some element] }
    assert { stack.size == 4 }
  end

  def test_pop
    stack = Stack.new %w[one two three]
    stack.pop!
    stack.pop!

    assert { stack.to_a == %w[one] }
    assert { stack.size == 1 }
  end

  def test_clear!
    stack = Stack.new %w[one two three]
    assert { !stack.empty? }

    stack.clear!
    assert { stack.empty? }
  end

  def test_empty_stack
    stack = Stack.new

    assert { stack.empty? == true }
    assert { stack.size.zero? }
    assert { stack.to_a == [] }
    assert { stack.pop!.nil? }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
