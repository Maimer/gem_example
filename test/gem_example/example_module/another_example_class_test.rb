# frozen_string_literal: true

require 'test_helper'

module GemExample
  module ExampleModule
    class AnotherExampleClassTest < Minitest::Test
      def test_example_method
        example_class = AnotherExampleClass.new('hello')

        assert_equal "Your input is 'hello'", example_class.example_method
      end

      def test_example_method__nil_input
        example_class = AnotherExampleClass.new(nil)

        assert_equal "Your input is ''", example_class.example_method
      end

      def test_example_method__error_raised
        example_class = AnotherExampleClass.new('error')
        example_class.expects(:example_method).raises(StandardError.new('Error!'))

        e = assert_raises StandardError do
          example_class.example_method
        end
        assert_equal 'Error!', e.message
      end

      def test_another_example_method
        example_class = AnotherExampleClass.new('hello')

        assert_equal 'This method was untested', example_class.another_example_method
      end
    end
  end
end
