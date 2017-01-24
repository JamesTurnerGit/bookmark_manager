ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative './app/models/tag.rb'
require_relative './app/models/link.rb'

class Bookmark_manager < Sinatra::Base

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb(:links)
  end

  get '/links/new' do
    erb(:'links/new')
  end

  post '/links' do
    tag = Tag.create(name: params[:tags])
    Link.create(url: params[:url], title: params[:title], tags: tag)
    redirect '/links'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
