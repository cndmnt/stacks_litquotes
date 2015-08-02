require './config/environment'
require_relative '../models/quote.rb'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @quotes = Quote.all
     erb :index
  end
  
  get '/addquote' do
    erb :addquote
  end
  
   get '/about' do
    erb :about
  end
  
  post '/addquote' do
    Quote.new(params[:quote], params[:author], params[:tags])
     @quotes = Quote.all
     erb :index
  end
  
  
  
end