require 'sinatra'
require 'sinatra/content_for'
# require './controller'


get '/' do 
	erb :index	
end

post '/grid' do 
	@@x = params[:x].to_i
	@@y = params[:y].to_i
	erb :grid
end

post '/grid/rover' do
	coords = params[:coords].split("")
	@rover_x = coords[0].to_i
	@rover_y = coords[1].to_i
	erb :grid2	
end