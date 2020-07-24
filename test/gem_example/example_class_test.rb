# frozen_string_literal: true

require 'test_helper'

module GemExample
  class ExampleClassTest < Minitest::Test
    def test_example_method
      example_class = ExampleClass.new('hello')

      assert_equal "Your input is 'hello'", example_class.example_method
    end

    def test_example_method__nil_input
      example_class = ExampleClass.new(nil)

      assert_equal "Your input is ''", example_class.example_method
    end

    def test_example_method__error_raised
      example_class = ExampleClass.new('error')
      example_class.expects(:example_method).raises(StandardError.new('Error!'))

      e = assert_raises StandardError do
        example_class.example_method
      end
      assert_equal 'Error!', e.message
    end
  end
end
