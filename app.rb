require 'sinatra/base'
require_relative './app/models/link.rb'


class Bookmark_manager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb(:links)
  end

  get '/links/new' do
    erb(:newLink)
  end

  post '/links/new' do
    p params
    #stuff
    redirect '/links'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
