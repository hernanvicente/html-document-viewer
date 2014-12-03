require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/assetpack'
require 'sass'
require 'slim'
require 'compass'

require_relative 'config/load_assets'

get '/' do
  slim :index
end
