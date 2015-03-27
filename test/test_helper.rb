ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/osx'
require 'factory_girl'
require 'rack/test'

# From https://mikegriffin.ie/blog/20110413-more-with-sinatra-and-factorygirl/
Dir[File.dirname(__FILE__)+"/factories/*.rb"].each {|file| require file }
