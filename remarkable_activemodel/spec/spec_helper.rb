# encoding: utf-8
require 'rubygems'
require 'rspec'

RAILS_VERSION = ENV['RAILS_VERSION'] || '3.2.2'

gem 'activesupport', RAILS_VERSION
require 'active_support/all'

gem 'activemodel', RAILS_VERSION
require 'active_model'

require File.expand_path('path_helpers', File.join(File.dirname(__FILE__), '/../../'))
load_project_path :remarkable, :remarkable_activemodel

require 'remarkable/active_model'

# Requires supporting files with custom matchers and macros, etc,
# # in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}
