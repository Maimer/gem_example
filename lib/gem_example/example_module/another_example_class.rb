# frozen_string_literal: true

module GemExample
  module ExampleModule
    class AnotherExampleClass
      def initialize(input)
        @input = input
      end

      def example_method
        "Your input is '#{@input}'"
      end

      def another_example_method
        'This method was untested'
      end
    end
  end
end
