require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/assetpack'
require 'sass'
require 'slim'
require 'compass'
require 'mongoid'

require_relative 'config/load_assets'
require_relative 'config/load_mongoid'
require_relative 'models/init'

get '/' do
  @documents = Document
  slim :index
end
