require 'sinatra/base'
require_relative './app/models/link.rb'

class Bookmark_manager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
