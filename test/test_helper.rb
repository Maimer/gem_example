# frozen_string_literal: true

require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  warn e.message
  warn 'Run `bundle install` to install missing gems'
  exit e.status_code
end

if ENV['WITH_COVERAGE'] == 'true' || ENV['CIRCLECI'] == 'true'
  require 'simplecov'

  if ENV['CIRCLECI'] == 'true'
    require 'simplecov-lcov'

    SimpleCov::Formatter::LcovFormatter.config.report_with_single_file = true
    SimpleCov.formatter = SimpleCov::Formatter::LcovFormatter
  end

  SimpleCov.start do
    enable_coverage :branch
    add_filter %r{\A/test}
  end
end

require 'gem_example'
require 'minitest/autorun'
require 'minitest/reporters'
require 'mocha/minitest'

MiniTest::Reporters.use!
