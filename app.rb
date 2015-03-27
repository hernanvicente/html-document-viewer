require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/assetpack'
require 'sass'
require 'slim'
require 'compass'
require 'mongoid'

configure do
  Mongoid.load!(File.dirname(__FILE__)+"/mongoid.yml")
end

require_relative 'models/init'
require_relative 'config/load_assets'

get '/' do
  @documents = Document
  slim :index
end
