# frozen_string_literal: true

module GemExample
  autoload :ExampleClass, 'gem_example/example_class'

  module ExampleModule
    autoload :AnotherExampleClass, 'gem_example/example_module/another_example_class'
  end
end
