require 'sinatra'
require 'sinatra/content_for'
# require './controller'


get '/' do 
	erb :index	
end

post '/grid' do 
	@x = params[:x].to_i
	@y = params[:y].to_i
	erb :grid
end

# get '/grid' do	
# 	erb :grid
# end