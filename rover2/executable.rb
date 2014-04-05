require 'sinatra'
require 'sinatra/content_for'
# require './controller'


get '/' do 
	erb :index	
end

post '/' do 
	binding.pry
end

get '/grid' do	
	erb :grid.erb
end