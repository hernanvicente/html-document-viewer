require 'bundler/setup'
require 'bson'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/assetpack'
require 'sass'
require 'slim'
require 'compass'
require 'mongoid'
require 'carrierwave'
require 'carrierwave/mongoid'

require_relative 'config/load_assets'
require_relative 'config/load_carrierwave'
require_relative 'config/load_mongoid'
require_relative 'models/init'

get '/' do
  @documents = Document
  slim :index
end

delete '/documents/:id' do
  Document.find(params[:id]).destroy
  redirect to('/')
end

put '/documents/:id' do
  @document = Document.find(params[:id])
  @document.update_attributes(params[:document])
  redirect to("/documents/edit/#{@document.id}")
end

post '/documents/create' do
  @document = Document.create params[:document]
  if @document.save
    redirect to("/documents/edit/#{@document.id}")
  end
end

get '/documents/delete/:id' do
  @document = Document.find(params[:id])
  slim :delete
end

get '/documents/edit/:id' do
  @document = Document.find(params[:id])
  slim :edit
end

get '/documents/new' do
  @document = Document.new
  slim :new
end

get '/documents/show/:id' do
  @document = Document.find(params[:id])
  slim :show, layout: false
end
